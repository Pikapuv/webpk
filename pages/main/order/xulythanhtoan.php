<?php
	include("../../../admin/config/connection.php");
	
	session_start();
	$ID_ThanhVien = $_SESSION['ID_ThanhVien'];
	$ID_GioHang = $_SESSION['ID_GioHang'];
    date_default_timezone_set('Asia/Ho_Chi_Minh');
	$ThoiGianLap=date("Y-m-d H:i:s");
    $NguoiNhan = $_SESSION['NguoiNhan'];
    $DiaChi = $_SESSION['DiaChi'];
	$GiaTien = $_SESSION['allMoney'];
    $SoDienThoai = $_SESSION['SoDienThoai'];
    $GhiChu = isset($_SESSION['GhiChu']) ? $_SESSION['GhiChu'] : "";
    if(isset($_POST['cod'])){
		$HinhThucThanhToan = 'cod';
		$CodeOrder = rand(1, 10000);
		$sql_insert_invoice = "INSERT INTO donhang(ID_ThanhVien,ThoiGianLap,DiaChi,GiaTien,SoDienThoai,NguoiNhan,HinhThucThanhToan, CodeOrder) VALUES('".$ID_ThanhVien."','".$ThoiGianLap."','".$DiaChi."','".$GiaTien."','".$SoDienThoai."', '".$NguoiNhan."', '".$HinhThucThanhToan."', '$CodeOrder')";
		$insert_invoice_result = mysqli_query($mysqli, $sql_insert_invoice);
		$id_order = mysqli_insert_id($mysqli);
		$_SESSION['ID_DonHang'] = $id_order;
		$sql_cart = "SELECT * FROM chitietgiohang 
		where chitietgiohang.ID_GioHang = $ID_GioHang";
		$query_cart = mysqli_query($mysqli, $sql_cart);
		while ($row = mysqli_fetch_assoc($query_cart)) {
			$id_sanpham = $row['ID_SanPham'];
			$soluong = $row['SoLuong'];
			$sql_sanpham = "SELECT * FROM sanpham
			where ID_SanPham = $id_sanpham";
			$query_sanpham = mysqli_query($mysqli, $sql_sanpham);
			$row_sanpham = mysqli_fetch_assoc($query_sanpham);
			$giaMua = $row_sanpham['GiaBan'] * (100-$row_sanpham['GiamGia'])/100;
			$sql_insert_order_detail = "INSERT INTO chitietdonhang (ID_DonHang, ID_SanPham, SoLuong, CodeOrder, GiaMua) VALUES ('$id_order', '$id_sanpham', '$soluong', '$CodeOrder', '$giaMua')";
			$insert_detail_result = mysqli_query($mysqli, $sql_insert_order_detail);
			$sql_update = "UPDATE sanpham set SoLuong = SoLuong - $soluong where ID_SanPham = $id_sanpham";
			$query_update = mysqli_query($mysqli, $sql_update);
		}
		$id_delete_cart = $_SESSION['ID_GioHang'];
		$sql_delete_all_products = "DELETE FROM chitietgiohang WHERE ID_GioHang = $id_delete_cart";
		$delete_result = mysqli_query($mysqli, $sql_delete_all_products);
		unset($_SESSION['allMoney']);
		header('location: ../../../index.php?navigate=finish');
    } 
?>