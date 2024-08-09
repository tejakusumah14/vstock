<?php
use \Dompdf\Dompdf;

class Jenis_Barang extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if($this->session->login['role'] != 'petugas' && $this->session->login['role'] != 'admin') redirect();
		$this->load->model('M_jenis_barang', 'm_jenis_barang');
		$this->data['aktif'] = 'jenis_barang';
	}

	public function index(){
		$this->data['title'] = 'Data Jenis Barang';
		$this->data['all'] = $this->m_jenis_barang->lihat();
		$this->data['no'] = 1;

		$this->load->view('jenis_barang/lihat', $this->data);
	}

	public function tambah(){
		if ($this->session->login['role'] == 'petugas'){
			$this->session->set_flashdata('error', 'Tambah data hanya untuk admin!');
			redirect('dashboard');
		}

		$this->data['title'] = 'Tambah Jenis Barang';

		$this->load->view('jenis_barang/tambah', $this->data);
	}

	public function proses_tambah(){
		if ($this->session->login['role'] == 'petugas'){
			$this->session->set_flashdata('error', 'Tambah data hanya untuk admin!');
			redirect('dashboard');
		}

		$data = [
			// 'id' => $this->input->post('id'),
			'nama_jenis' => $this->input->post('nama'),
		];

		if($this->m_jenis_barang->tambah($data)){
			$this->session->set_flashdata('success', 'Data Jenis Barang <strong>Berhasil</strong> Ditambahkan!');
			redirect('jenis_barang');
		} else {
			$this->session->set_flashdata('error', 'Data Jenis Barang <strong>Gagal</strong> Ditambahkan!');
			redirect('jenis_barang');
		}
	}

	public function ubah($id){
		if ($this->session->login['role'] == 'petugas'){
			$this->session->set_flashdata('error', 'Ubah data hanya untuk admin!');
			redirect('dashboard');
		}

		$this->data['title'] = 'Ubah Jenis Barang';
		$this->data['jenis_barang'] = $this->m_jenis_barang->lihat_id($id);

		$this->load->view('jenis_barang/ubah', $this->data);
	}

	public function proses_ubah($id){
		if ($this->session->login['role'] == 'petugas'){
			$this->session->set_flashdata('error', 'Ubah data hanya untuk admin!');
			redirect('dashboard');
		}

		$data = [
			'id' => $this->input->post('id'),
			'nama_jenis' => $this->input->post('nama'),
		];

		if($this->m_jenis_barang->ubah($data, $id)){
			$this->session->set_flashdata('success', 'Data Jenis Barang <strong>Berhasil</strong> Diubah!');
			redirect('jenis_barang');
		} else {
			$this->session->set_flashdata('error', 'Data Jenis Barang <strong>Gagal</strong> Diubah!');
			redirect('jenis_barang');
		}
	}

	public function hapus($id){
		if ($this->session->login['role'] == 'petugas'){
			$this->session->set_flashdata('error', 'Hapus data hanya untuk admin!');
			redirect('dashboard');
		}
		
		if($this->m_jenis_barang->hapus($id)){
			$this->session->set_flashdata('success', 'Data Jenis Barang <strong>Berhasil</strong> Dihapus!');
			redirect('jenis_barang');
		} else {
			$this->session->set_flashdata('error', 'Data Jenis Barang <strong>Gagal</strong> Dihapus!');
			redirect('jenis_barang');
		}
	}

	public function export(){
		$dompdf = new Dompdf();
		$this->data['all'] = $this->m_jenis_barang->lihat();
		$this->data['title'] = 'Laporan Data Jenis Barang';
		$this->data['no'] = 1;

		$dompdf->setPaper('A4', 'Landscape');
		$html = $this->load->view('jenis_barang/report', $this->data, true);
		$dompdf->load_html($html);
		$dompdf->render();
		$dompdf->stream('Laporan Data Jenis Barang Tanggal ' . date('d F Y'), array("Attachment" => false));
	}
}