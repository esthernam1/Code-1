import processing.pdf.*;
size (500,500, PDF, "Pattern take 3.pdf" );
background(#cc0000);

for (int i = 0; i < 500; i += 3) {
stroke(250-i);
line(i, 0, i, 500);
}

for (int i = 0; i < 500; i += 3) {
stroke(250-i);
line(500, i, i, i);
}

for (int i = 0; i < 500; i += 10) {
stroke(250-i);
line(i, 0, i, i);
}


for (int i = 0; i < 500; i += 10) {
stroke(250-i);
line(i, i, 0, i);
println("finished");
exit();
}