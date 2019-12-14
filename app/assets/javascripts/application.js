// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

  // function printPermitNew() {
  //   var printContents = document.getElementById('permit_new').innerHTML;
  //   var originalContents = document.body.innerHTML;
  //   document.body.innerHTML = printContents;
  //   window.print();
  //   document.body.innerHTML = originalContents;
  // }



  // function printPermit(){
  //   html2canvas(document.getElementById('permit')).then(function(canvas) {
  //     // document.body.appendChild(canvas);
  //     console.log(canvas);
  //     saveAs(canvas.toDataURL(), 'permitNew.png');
  //   });
  // }

  function printPermitNew(){
    console.log("tests");
    html2canvas(document.getElementById('permit_new')).then(function(canvas) {
      // document.body.appendChild(canvas);
      console.log(canvas);
      saveAs(canvas.toDataURL(), 'permitNew.png');
    });
  }

  function saveAs(uri, filename) {

      var link = document.createElement('a');

      if (typeof link.download === 'string') {

          link.href = uri;
          link.download = filename;

          //Firefox requires the link to be in the body
          document.body.appendChild(link);

          //simulate click
          link.click();

          //remove the link when done
          document.body.removeChild(link);

      } else {

          window.open(uri);

      }
  }



  // function printPermit()
  // {
  //
  //   var divToPrint=document.getElementById('permit').innerHTML;
  //
  //   var newWin=window.open('','Print-Window');
  //   newWin.document.write( "<link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\" media=\"print\"/>" );
  //   newWin.document.open();
  //
  //   newWin.document.write('<html><body onload="window.print()">'+divToPrint+'</body></html>');
  //
  //   newWin.document.close();
  //
  //   setTimeout(function(){newWin.close();},10);
  //
  //   location.reload();
  //
  // }
