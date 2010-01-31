$(document).ready(function(){
  code = $('pre code').text().split(/\n/);
  code_text = '';
  $.each(code, function(line, v) {
    code_text += v.replace(/^        /,'') + "\n";
  });
  $('pre code').text(code_text);
  hljs.initHighlightingOnLoad();      

});
