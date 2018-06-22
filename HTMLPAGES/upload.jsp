<div class="empty">

<form action="UploadServlet.jsp" method="post" enctype="multipart/form-data" name="form1" >
<h1>UPLOAD FILE</h1>
<table cols="4" class="text" width="100%" style="color:white;">
<tr><td style="text-align:left;margin-bottom:5px;">Title:</td> <td style="text-align:left"><input type="text" name="F_TITLE" style="width:70%;color:black;margin-bottom:5px;"  /></td></tr>
<tr><td style="text-align:left;margin-bottom:5px;">Subject:</td> <td style="text-align:left"><input type="text"  name="F_SUB" style="width:70%;margin-bottom:5px;color:black;" /></td></tr>
<TR><TD style="text-align:left">Type:</TD><td><select  name="F_TYPE" style="color:black;">
<option value="JOURNALS">JOURNALS</option>
<option value="NOTES">NOTES</option>
<option value="ASSINGMENT">ASSINGMENT</option>
</select></TD></TR><tr></tr><tr></tr>
<tr><td style="text-align:left;margin-bottom:5px;margin-bottom:-5px;">FilePath:</td> <td colspan=3 style="text-align:left;margin-top:5px;"><input type="File"  name="F_FILE"  accept=".pdf" style="margin-top:5px;"/></td></tr><tr></tr><tr></tr><tr></tr>
<tr><td colspan="2" style="margin-right:-20px;" ><input type="submit" value="Upload" id="sub" style="background-color:#999;margin-top:5px;" ></td><td colspan="2" style="text-align:left;margin-left:-20px;" ><input type="reset" value="Clear" style="background-color:#999"></td></tr>
</table>
</form>

<div class="read"></div>
<div>
