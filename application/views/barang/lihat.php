<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view('partials/head.php') ?>
	<link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.1.1/css/buttons.dataTables.css">
</head>

<body id="page-top">
	<div id="wrapper">
		<!-- load sidebar -->
		<?php $this->load->view('partials/sidebar.php') ?>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content" data-url="<?= base_url('barang') ?>">
				<!-- load Topbar -->
				<?php $this->load->view('partials/topbar.php') ?>

				<div class="container-fluid">
				<div class="clearfix">
					<div class="float-left">
						<h1 class="h3 m-0 text-gray-800"><?= $title ?></h1>
					</div>
					<div class="float-right">
						<?php if ($this->session->login['role'] == 'admin'): ?>
							<a href="<?= base_url('barang/export') ?>" target="_blank" class="btn btn-danger btn-sm"><i class="fa fa-file-pdf"></i>&nbsp;&nbsp;Export</a>
							<a href="<?= base_url('barang/tambah') ?>" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah</a>
						<?php endif; ?>
					</div>
				</div>
				<hr>
				<?php if ($this->session->flashdata('success')) : ?>
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<?= $this->session->flashdata('success') ?>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				<?php elseif($this->session->flashdata('error')) : ?>
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
						<?= $this->session->flashdata('error') ?>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				<?php endif ?>
				<div class="card shadow">
					<div class="card-header"><strong>Daftar Barang</strong></div>
					<div class="card-body">
						<div class="table-responsive">
							<div>
								<div class="form-row">
									<div class="form-group col-md-4">
										<label for="jenis"><strong>Filter Jenis Barang</strong></label>
										<select name="jenis_barang" id="jenis_barang" class="form-control">
											<option value="">-- Silahkan Pilih --</option>
											<?php foreach($all_jenis_barang as $jenis_barang): ?>
											<option value="<?= $jenis_barang->nama_jenis ?>"><?= $jenis_barang->nama_jenis ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
							</div>
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<td>No</td>
										<td>Kode Barang</td>
										<td>Nama Barang</td>
										<td>Jenis Barang</td>
										<td>Merek Barang</td>
										<td>Stok</td>
										<td>Keterangan</td>						
										<?php if($this->session->login['role'] == 'admin'): ?>
											<td class="notexport">Aksi</td>		
										<?php endif; ?>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($all_barang as $barang): ?>
										<tr>
											<td><?= $no++ ?></td>
											<td><?= $barang->kode_barang ?></td>
											<td><?= $barang->nama_barang ?></td>
											<td><?= $barang?->nama_jenis ?? '-' ?></td>
											<td><?= $barang?->merek ?? '-' ?></td>
											<td><?= $barang->stok ?> <?= strtoupper($barang->satuan) ?></td>
											<td><?= $barang->keterangan ?></td>
											<?php if($this->session->login['role'] == 'admin'): ?>
												<td>
													<a href="<?= base_url('barang/ubah/' . $barang->kode_barang) ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></i>&nbsp;&nbsp;Edit</a>
													<a onclick="return confirm('apakah anda yakin?')" href="<?= base_url('barang/hapus/' . $barang->kode_barang) ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
												</td>
											<?php endif; ?>
										</tr>
									<?php endforeach ?>
								</tbody>
							</table>
						</div>
					</div>				
				</div>
				</div>
			</div>
			<!-- load footer -->
			<?php $this->load->view('partials/footer.php') ?>
		</div>
	</div>

	<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://cdn.datatables.net/v/dt/dt-2.0.3/datatables.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/js/sb-admin-2.min.js"></script>
	<script src="<?= base_url('sb-admin') ?>/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script> 
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/3.1.1/js/buttons.print.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
	<script>
		$(document).ready(function() {
			const table = $('#dataTable').DataTable({
				buttons: [
					{
						extend: 'copy',
						exportOptions: {
							columns: ':not(.notexport)'
						}
					},
					{
						extend: 'excel',
						exportOptions: {
							columns: ':not(.notexport)'
						}
					},
					{
						extend: 'pdfHtml5',
						exportOptions: {
							columns: ':not(.notexport)'
						}
					},
					{
						extend: 'csv',
						exportOptions: {
							columns: ':not(.notexport)'
						}
					},
				],
				dom: "<'row'<'col-sm-12 col-md-9'Bl><'col-sm-12 col-md-3'f>>" +
					"<'row'<'col-sm-12'tr>>" +
					"<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
			});

			table.search.fixed('jenis_barang', function (searchStr, data, index) {
				let jenisBarang = data[3];
				let filterJenisBarang = $('#jenis_barang').val();
				
				if(filterJenisBarang && jenisBarang != filterJenisBarang) {
					return false;
				}

				return true;
			});
			document.querySelector('#jenis_barang').addEventListener('change', function () {
				table.draw();
			});
		});
	</script>
</body>
</html>