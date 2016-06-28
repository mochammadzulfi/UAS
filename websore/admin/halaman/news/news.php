<section id="news">

<div id="data">
    

    
	<button type="button" class="btn btn-success" id="btnTambah"> Tambah Data</button>
	    <hr />
    
   		 <!-- Panel untuk menampilkan data dari database -->
               <div class="panel panel-info">
              <div class="panel-heading">
                <h3 class="panel-title">Data News</h3>
              </div>
              <div class="panel-body">
              
               			 <table class="table table-striped" id="tabelData">
 							 <thead>
                             		<tr> 
                                    		<td> No</td>
                                            <td> Judul</td>
                                           	<td> Isi</td>
                                            <td> Tanggal</td>
                                            <td> Gambar</td>
                                            <td> Aksi</td>
                                    </tr>
                             </thead>
                             
                             <tbody>
                             
                             </tbody>						 
                             
                          </table>
                         
              </div>
            </div>
            <!-- Penutup Panel -->
    </div>
    <!--panel untuk menginsert data-->
    <div id="form">
   			 <div class="panel panel-info">
  			<div class="panel-heading">
    		<h3 class="panel-title">Form Data News</h3>
  			</div>
  			<div class="panel-body">
               <form class="form-horizontal" id="form">
                 <input id="id_news" type="hidden" class="form-control" />
                         
              <div class="form-group">
                <label for="judul" class="col-sm-2 control-label">Judul News</label>
                <div class="col-sm-10">
                 <input id="judul" type="text" class="form-control" />
                </div>
              </div>
              
              <div class="form-group">
                <label for="isiartikel" class="col-sm-2 control-label">Isi News</label>
                <div class="col-sm-10">
                 <textarea id="isi" cols="80" rows="10" class="form-control"></textarea>
                </div>
              </div>
                           
               <div class="form-group">
                <label for="gambar" class="col-sm-2 control-label">Gambar</label>
                <div class="col-sm-10">
                 <input id="gambar" type="file" />
                </div>
              </div>
              
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="button" class="btn btn-success" id="btnProses">Proses</button>
                  <button type="reset" class="btn btn-warning" id="btnReset">Reset</button>
                  <button type="button" class="btn btn-danger" id="btnBatal">Batal</button>
                </div>
              </div>
            </form>
  			</div>
			</div>
    </div>

</section>

<script src="halaman/news/news_script.js"></script>