  <div id="templatemo_bottom"><span class="bf bft"></span><span class="bf bfb"></span>
    <div class="col col_3">
      <h4>Sosmed</h4>
      <ul class="nobullet sosial">
        <?php
        $query = mysqli_query($koneksi, "SELECT * FROM tb_sosial");
        while ($data = mysqli_fetch_array($query)) {
        ?>
          <li>
            <a href="<?= $data['link']; ?>" target="_blank">
              <img src="gambarSocial/<?= $data["icon"]; ?>" alt="<?= $data['nama_sosmed']; ?>" height="30" width="30">
              <?= $data['nama_sosmed']; ?>
            </a>
          </li>
        <?php } ?>
      </ul>
    </div>

    <?php
    include "koneksi.php";
    $query = mysqli_query($koneksi, "SELECT * FROM
tb_twitter");
    while ($data = mysqli_fetch_array($query)) {

    ?>
      <div class="col col_3">
        <h4><?= $data['judul'] ?> </h4>
        <p><?= $data['isi'] ?> </p>

      </div>
    <?php } ?>


    <?php
    include "koneksi.php";
    $query = mysqli_query($koneksi, "SELECT * FROM
tb_about");
    while ($data = mysqli_fetch_array($query)) {

    ?>
      <div class="col col_3">
        <h4><?= $data['judul'] ?> </h4>
        <p><?= $data['isi'] ?> </p>

      </div>
    <?php } ?>

    <div class="clear"></div>
  </div>