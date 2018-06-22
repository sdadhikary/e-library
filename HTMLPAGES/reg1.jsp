<html>
<head>
<link rel="stylesheet" href="jquery-ui.css">
<script src="jquery-1.3.1.js"></script>
<script src="jquery-1.8.2.js"></script>
<script src="jquery-ui.js"></script>
<script src="jquery.ui.widget.js"></script>
<script src="jquery.validate.js"></script>


<style>
.cls1
{
  color:red;
  }
  </style>

<script>
 $("document").ready(
function()
{
$("#form1").validate(
{errorClass:"cls1"
})
})
$("document").ready(
function() 
{
$("#datepicker").datepicker(
{
  dateFormat:"dd/mm/yy",
  changeYear:true,
  yearRange:'1970:2014',
  changeMonth:true,
 changeDate:true
 })
  })
</script>
</head>
<body>

        
		
			<div class="content_box">      
						<form action="GR_DETAILServlet.jsp" method="post" id="form1" name="form1">
                        
                        	<center><h1>Registration</h1></center>
							<table height="200" width="100%" cellspacing="2" style="border-bottom-style:groove; border:groove;">	
                                    <tr align="center"><td colspan="7" style="background:url(../images/TR1.png) center no-repeat;"><b>COLLEGE INFO</b></td></tr>
			  						<tr><td>ID</td><td><input type="text" name="ID" placeholder="GR_NO" class="required"></td>
     								</tr>
									<tr><td>NAME</td><td><input type="text"  name="txtfname" placeholder="FIRST NAME" width="200px" class="required"></td>
									<td><input type="text" name="txtmname" placeholder="MIDDLE NAME" width="200px" class="required"></td>
									<td><input type="text" name="txtlname" placeholder="LAST NAME" width="200px" class="required"></td></tr>
                                    <TR>
									<TD> DEPARTMENT :</TD> <TD> <SELECT NAME="DEPT" > 
									<option value="ENGG">Engineering</option>
									<option value="POLY">Polytechnique</option>
									<option value="PHAR">Pharmacy</option>
									<option value="MBA">MBA</option>
									</SELECT> </TD>
									<TD> CLASS :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT NAME="CLASS"> 
									<option value="MCA">MCA</option>
									<option value="E&TC">E&TC </option>
									<option value="MECH">Mechanical</option>
									<option value="ELECT">Electonics</option>
                                    <option value="COMP">Computer</option>
                                    <option value="CIVIL">Civil</option>
									</SELECT> </TD>
                                    <TD> ACADMIC_ YEAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <SELECT NAME="C_YEAR"> 
									<option value="1">1st</option>
									<option value="2">2nd</option>
									<option value="3">3rd</option>
									<option value="4">4th</option>
									</SELECT> </TD>
                                    <TD> C_ SEM :&nbsp;&nbsp;&nbsp;
                                      <SELECT NAME="C_SEM"> 
									<option value="1">1st</option>
									<option value="2">2nd</option>
									<option value="3">3rd</option>
									<option value="4">4th</option>
                                    <option value="5">5th</option>
                                    <option value="6">6th</option>
                                    <option value="7">7th</option>
                                    <option value="8">8th</option>
									</SELECT> </TD>
									
                                    <td>YOA</td><td><input type="text" id="datepicker" class="date" placeholder="DD/MM/YYYY"/ name="YOA"></td></tr>
							</table><br/>
                            
							<table height="200" width="100%" cellspacing="2"  style="border-bottom-style:groove; border:groove;">
                       				<tr align="center"><td colspan="8" style="background:url(../images/TR2.png) center no-repeat;"><b>RECIDENT INFO</b></td></tr>
                                    <tr><td>HOUSE NO:</td><td> <input type="text" name="H_NO" /></td>
									<td>HOUSE NAME:</td><td> <input type="text" name="H_NAME" /></td>
									<td>SOCIETY:</td><td> <input type="text" name="COLN_NAME" /></td>
									<td>AREA:</td><td> <input type="text" name="AREA" /></td></tr>
                                    <tr><td>LAND MARK:</td><td> <input type="text" name="L_MARK"class="required" /></td>
									<td>POST OFFICE:</td><td> <input type="text" name="POST_OFI" class="required"/></td>
                                    <TD> STATE:</TD> <TD> <SELECT NAME="STATE" > 
									<option value="MR">Maharashtra</option>
									<option value="DL">Delhi</option>
                                    <option value="JK">J & K</option>
									<option value="BR">Bihar</option>
									<option value="RJ">Rajsthan</option>
									<option value="GJ">Gujrat</option>
									<option value="AP">Andrapradesh</option>
									<option value="WB">West Bengal</option>
									<option value="KR">karnatak</option>

									</SELECT> 
                                    </TD>
									<td>DIST:</td><td> <input type="text" name="DIST" class="required"/></td></tr>
									 <TR>
								    <td>TALUKA:</td><td> <input type="text" name="TQ" class="required"/></td>
                                    <td>PIN CODE:</td><td> <input type="text" name="PIN_CODE" class="number required"/></td></tr>
                            </table><br/>
                             <table height="100" width="100%" cellspacing="2"  style="border-bottom-style:groove; border:groove;">
                       				<tr align="center"><td colspan="7" style="background:url(../images/TR3.png) center no-repeat;"><b>CONTACT INFO</b></td></tr>
                                    <tr><td>MOBILE NO 1:</td><td> <input type="text" name="M_NO1" class="number required" maxlength="10"/></td>
									<td>MOBILE NO 2:&nbsp;&nbsp;&nbsp;<input type="text" name="M_NO2" maxlength="10"/></td>
									<td>PHONE:</td><td> <input type="text" name="PHN_NO"  maxlength="11"/></td>
									<td>EMAIL ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="EMIL"/ class="email required"></td></tr>
							</table><br/>
                            <table width="100%">
                            	<tr><td align="left"><a href="index.jsp"><span style="color:#blue;align:center">HOME</span></a></td>
								<td align="right"><input type="submit" value="Submit"/></td>
								<td align="right"><input type="reset" value="Clear"></td></tr>
                            </table>
                             
						</form><br/>
          
		</div>
	</body>
    
</html>