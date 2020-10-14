---
date: "2019-05-05T00:00:00+01:00"
draft: false
linktitle: Práctico uno
menu:
  example:
    parent: Prácticos
    weight: 1
title: Práctico 1
toc: true
type: docs
weight: 1
---

<SCRIPT>
function passWord() {
var testV = 1;
var pass1 = prompt('Please Enter Your Password',' ');
while (testV < 3) {
if (!pass1) 
history.go(-1);
if (pass1.toLowerCase() == "lineacomando") {
window.open('/courses/example/example1.html');
break;
} 
testV+=1;
var pass1 = 
prompt('Access Denied - Password Incorrect, Please Try Again.','Password');
}
if (pass1.toLowerCase()!="password" & testV ==3) 
history.go(-1);
return " ";
} 
</SCRIPT>
<CENTER>
<FORM>
<input type="button" value="Acceder al Práctico" onClick="passWord()">
</FORM>
</CENTER>
