<tr class="row-keranjang">
	<td class="nama_barang">
		<?= $this->input->post('nama_barang') ?>
		<input type="hidden" name="nama_barang_hidden[]" value="<?= $this->input->post('nama_barang') ?>">
	</td>
	<td class="kode_barang">
		<?= $this->input->post('kode_barang') ?>
		<input type="hidden" name="kode_barang_hidden[]" value="<?= $this->input->post('kode_barang') ?>">
	</td>
	<td class="jenis_barang">
		<?= $this->input->post('jenis_barang') ?>
		<input type="hidden" name="jenis_barang_hidden[]" value="<?= $this->input->post('jenis_barang') ?>">
	</td>
	<td class="merek">
		<?= $this->input->post('merek') ?>
		<input type="hidden" name="merek_hidden[]" value="<?= $this->input->post('merek') ?>">
	</td>
	<td class="jumlah">
		<?= $this->input->post('jumlah') ?>
		<input type="hidden" name="jumlah_hidden[]" value="<?= $this->input->post('jumlah') ?>">
	</td>
	<td class="satuan">
		<?= strtoupper($this->input->post('satuan')) ?>
		<input type="hidden" name="satuan_hidden[]" value="<?= $this->input->post('satuan') ?>">
	</td>
	<td class="keterangan">
		<?= strtoupper($this->input->post('keterangan')) ?>
		<input type="hidden" name="keterangan_hidden[]" value="<?= $this->input->post('keterangan') ?>">
	</td>
	<td class="aksi">
		<button type="button" class="btn btn-danger btn-sm" id="tombol-hapus" data-nama-barang="<?= $this->input->post('nama_barang') ?>"><i class="fa fa-trash"></i></button>
	</td>
</tr>