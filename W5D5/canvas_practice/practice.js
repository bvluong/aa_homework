document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById("mycanvas");
  canvasEl.width = 500;
  canvasEl.height = 500;

  const ctx = canvasEl.getContext("2d");
  ctx.fillStyle = "red";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(110,110, 20, 0, 2*Math.PI, true);
  ctx.arc(110,210, 20, 0, 2*Math.PI, true);
  ctx.arc(110,310, 20, 0, 2*Math.PI, true);
  ctx.arc(110,410, 20, 0, 2*Math.PI, true);
  ctx.arc(410,110, 20, 0, 2*Math.PI, true);
  ctx.arc(410,210, 20, 0, 2*Math.PI, true);
  ctx.arc(410,310, 20, 0, 2*Math.PI, true);
  ctx.arc(410,410, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "blue";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "white";
  ctx.fill();


});
