// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
    "language": {
      "decimal":        "",
      "emptyTable":     "Veri Bulunamadı",
      "info":           "_TOTAL_ satırdan _START_ - _END_ arası satırlar gösteriliyor",
      "infoEmpty":      "Satır bulunamadı",
      "infoFiltered":   "(_MAX_ satır arasından filtrelendi)",
      "infoPostFix":    "",
      "thousands":      ",",
      "lengthMenu":     "_MENU_ satır göster",
      "loadingRecords": "Yükleniyor...",
      "processing":     "",
      "search":         "Filtrele:",
      "zeroRecords":    "Eşleşen kayıt bulunamadı",
      "paginate": {
          "first":      "İlk",
          "last":       "Son",
          "next":       "Sonraki",
          "previous":   "Önceki"
      },
      "aria": {
          "sortAscending":  ": Çoktan Aza sıralamak için tıklayın",
          "sortDescending": ": Azdan çoğa sıralamak için tıklayın"
      }
    },
    "columnDefs": [
      { "width": "25%", "targets": 1 }
    ]
  });
});
