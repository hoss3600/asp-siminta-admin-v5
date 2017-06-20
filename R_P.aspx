<%@ Page Language="C#" AutoEventWireup="True" CodeFile="R_P.aspx.cs" CodeBehind="R_P.aspx.cs" Inherits="R_P" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ressting password</title>
   
   
    <link href="assets/css/style2.css" rel="stylesheet" type='text/css' />
   

        <meta charset="utf-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->

</head>


   <body >

	 <div class="main">
		<div class="login-form">
			<h1>Password Resetting</h1>
					
				<form id="A" runat=server>
						
                    <div class="form-group">
                    <asp:TextBox ID="Password1" runat="server" class="text" TextMode="Password"  Placeholder="New password" ></asp:TextBox>
               	&nbsp;	&nbsp;  <asp:RequiredFieldValidator runat="server" ControlToValidate="password1" CssClass="text-danger" ErrorMessage="Password field is required." />
        
                     </div>
                   
                   <div class="form-group">
                     <asp:TextBox ID="password2" runat="server" class="text" TextMode="Password" Placeholder="Re-enter new password"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="password2" CssClass="text-danger" ErrorMessage="Re-Password field is required." />                      
                      </div>
                <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="password2"
              ControlToValidate="Password1"
              ErrorMessage="Your passwords do not match up!"
 />
					<div class="submit">
							
                        <asp:Button ID="sumit" runat="server" Text="Update" />
                       <br />
                      <center> <asp:Label ID="Label1" runat="server" Text= "Label" Visible="False" ForeColor="#CC3300">The username or password is uncorrect</asp:Label> </center>  

					</div>	
				<!--	<p><a href="#">Forgot Password ?</a></p> -->
				</form>
			</div>
			
			
		</div>
		
		 		
</body>


</html>
