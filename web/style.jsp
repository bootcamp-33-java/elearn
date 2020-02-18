<%-- 
    Document   : style
    Created on : Feb 16, 2020, 12:29:30 AM
    Author     : HENSTECH
--%>
<style>
body
{
	font-family: 'Macondo', cursive;
	background-image: url("bg.jpg");
 	background-repeat: no-repeat;
    background-size: 1600px 800px   
}
#heading
{     position: absolute;
	     left:17%;
    	width: 1000px;
		background: rgba(255,255,255,0.5);
		padding: 20px;
		border: 1px solid #00038c;
		box-shadow: 0 0 8px 3px #fff;
}
#text
{
	 text-align: center;
}
#quiz
{
	    height: 330px;
    	width: 60%;
    	position: absolute;
    	left:20%;
    	top: 30%;
    	transform: translateX(-50) translateY(-50);
		background: rgba(255,255,255,0.5);
		padding: 20px;
		border: 1px solid #00038c;
		box-shadow: 0 0 8px 3px #fff;
	
}
#question
{
   padding: 20px;
   font-size: 22px;
   background: #08038C;
   border-radius: 10px;
   margin: 10px 0 10px 0;
   color: #f6f6f6;
}
.option{
	width: 470px;
	display: inline-block;
	padding: 10px 0 10px 0;
	background: rgba(255,255,255,0.5);
	margin: 10px 0 10px 10px;
	color: #0000000;
	 border: 2px solid #008CBA; 
	border-radius: 5px;
}

.option:hover{
	background: #08038C;
	color: #f6f6f6;	
}
#next
{
	font-family: 'Macondo', cursive; 
	background-color:  #4CAF50;
	width:10%;
	height: 4%px;
	border: 1px solid #00038c;
	 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	cursor: pointer;;
	float: right;
	 padding: 10px 10px;
	
}
#next:hover{
	background-color:rgb(106, 90, 205)
}
#quit
{
	position: absolute;
	 right:    0;
bottom:   0;
font-family: 'Macondo', cursive; 
	background-color:  #4CAF50;

	border: 1px solid #00038c;
	 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	cursor: pointer;;
	float: right;
	 padding: 5px 5px;
	
}
#quit:hover{
		background-color:rgb(106, 90, 205)
}
#result
{
	font-size:100px;
	 text-align: center;
    	 height: 100px;
    	width: 60%;
    	position: absolute;
    	left:20%;
    	top: 30%;
    	transform: translateX(-50) translateY(-50);
		background: rgba(255,255,255,0.5);
		padding: 20px;
		border: 1px solid #00038c;
		box-shadow: 0 0 8px 3px #fff;
}

</style>