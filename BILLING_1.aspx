<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BILLING_1.aspx.cs" Inherits="FRANCHISE_PORT_2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FRANCHISEPORT</title>
    <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width,initial-scale=1" />
     <link href="Content/css/bootstrap-grid.css" rel="stylesheet" />
     <link href="Content/css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Css/Form.css" rel="stylesheet" />
    <link href="Css/Modal.css" rel="stylesheet" />
     <link rel = "stylesheet" href = "https://www.w3schools.com/lib/w3.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular.min.js" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular-csp.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular-csp.min.css" />
     <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular.min.js.map"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
     <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>  
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>  
     <style>
        .dropbtn {
            background-color: lightgray;
            color: black;
            padding: 8px;
            font-size: 14px;
            border: none;
            height:10%;
        }
        .dropup {
            position: relative;
            display: inline-block;
       }
       .dropup-content {
            display: none;
            position: absolute;
            background-color:lightgray;
            width:60%;
            min-width:60%;
            bottom: 47.4px;
            z-index: 2;
        }
        .dropup-content a {
         color: black;
         padding: 12px 16px;
         text-decoration: none;
         display: block;
      }
     .dropup-content a:hover {background-color: #ccc}
    .dropup:hover .dropup-content {
        display: block;
     }
    .dropup:hover .dropbtn {
        background-color: lightgray;
    }
    </style>
    <style>
    input[type="file"] {
        display:block;
    }
    .imageRounded {
        max-height: 75px;
        border: 2px solid;
        margin: 10px 10px 0 0;
        padding: 1px;
     }
    </style>
<style>
    .pagination a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        transition: background-color .3s;
        }
        .pagination a.active {
                background-color: dodgerblue;
                color: white;
        }
        .pagination a:hover:not(.active) {background-color: #ddd;}
    </style>
    <style>
        input[type=text]:focus {
                background-color: lightblue;
            }
    </style>
    <style>
        input[type=text] {
                transition: width 0.4s ease-in-out;
        }
    </style>
  <style>
        body {
            font-family: Arial;
            color: white;
        }
        .split {
            height:100%;
            width:50%;
            position:fixed;
            z-index: 1;
            top: 0;
            overflow-x:hidden;
            padding-top:20px;
        }
       .left {
            left: 0;
            background-color:#111;
        }
      .right {
            right: 0;
            background-color: red;
      }
        .centered {
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%, -50%);
            text-align:center;
        }
        .centered img {
            width:150px;
            border-radius:50%;
        }
  </style>
</head>
<body >
    <form id="form1"  runat="server">
        <div class="w3-container" style="width:500%;margin-left:-1.3%">
        <div class="w3-bar w3-cyan">
    <a href="HOME.aspx" class="w3-bar-item w3-button w3-mobile w3-green"><img src="Images/logo.jpg"  alt="images" class="img-fluid" style="width:20px;height:20px" /></a>
    <a href="HOME.aspx" class="w3-bar-item w3-button w3-mobile"><strong><span class="fa fa-home"></span></strong></a>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Front Desk <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-w3-wheat" style="width:20%">
        <a href="BILLING_3.aspx" class="w3-bar-item w3-button w3-mobile">Registration/Bill</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Consultation</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Bill Transaction</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Reciptes</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Sample Collection</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Test Result Verification</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Print Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Reports Dispatch</a>
         <a href="#" class="w3-bar-item w3-button w3-mobile">Test Koisk Information</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Report Ready</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Dues Reciept</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile"><span class="fa fa-signout"></span>Log Out</a>
      </div>
    </div>
     <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Administration <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-wheat" style="width:20%">
        <a href="#" class="w3-bar-item w3-button w3-mobile">Staff/Doctor</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">DHL/Insurance/Corporate</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Credit Customer Statement</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Others</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">clinical</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Lab Info</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Lab Settings</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Daily Reports <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-wheat" style="width:20%">
        <a href="#" class="w3-bar-item w3-button w3-mobile">Daily Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Credit Customer Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Dues Reports For Walkin</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Referal Patient Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">General Collection</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Discount Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Credit Customer Statement</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Cancel Refund Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Marketing PRO</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Pending/Completed Status</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">SMS Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Area Wise Patient List</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Rejected Sample</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Package Revenue</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">MIS REPORTS <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-wheat" style="width:20%">
        <a href="#" class="w3-bar-item w3-button w3-mobile">Test wise Registration</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Cosultation Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Group wise Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Employee Master</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Doctors</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Credit Customers</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Test Group</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Group wise Revenue</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">department wise view</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Account Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Test View</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Consolidated Bill</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">OP-IP Revenue</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Account Status</a>
      </div>
    </div>
     <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Appointments <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-wheat" style="width:20%">
        <a href="#" class="w3-bar-item w3-button w3-mobile">Timing</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Appointment Schedular</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Personal Schedular</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Color Settings</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">PMS Admin Reports</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Shift Timings</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Staff Management</a>
      </div>
    </div>
     <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Queries <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-wheat" style="width:20%">
        <a href="#" class="w3-bar-item w3-button w3-mobile">Day Collection Status</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Audit Table View</a>
      </div>
    </div>
     <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Maintainence <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-wheat" style="width:10%">
        <a href="#" class="w3-bar-item w3-button w3-mobile" target="_blank">User Manager</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Change Password</a>
        <a href="#" class="w3-bar-item w3-button w3-mobile">Merge Tool</a>
      </div>
    </div>
     <a href="Home.aspx" class="w3-bar-item w3-button w3-mobile">Help</a>
  </div>
</div>
   <section class="col-lg-9"  style="background-color:darkcyan;margin-left:10%;border-style:groove;border-radius:30px;border-width:thin;border-color:lightgray">
      <div class="container-fluid" style="margin-left:-2.7%">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="w3-anmate-right  text-center" style="background-color:royalblue;opacity:8;font-family:'Buxton Sketch';font-size:41px;font-weight:bolder;color:black;border-style:groove;border-radius:30px;border-width:thin;border-color:lightgray;width:102%;margin-top:0.2%;padding:0.4px"><strong><u style="text-underline-position:below">REGISTRATION/BILLING</u></strong></h1>
                       <hr style="color:lightgray;border:solid  thick  15px;margin-top:-1%;width:102%" />
                         <div class="split-left">
                             <p class="col-md-6">
                                 <asp:Label ID="Label1" runat="server" Text="PatID:" style="font-family:Arial;font-weight:bolder;color:black"></asp:Label>
                                 <asp:DropDownList ID="DropDownList12" CssClass="form-control" style="display:none;border-style:groove;border-radius:30px" runat="server" Width="103px" Height="26px"></asp:DropDownList>
                                <asp:TextBox ID="new_id"  CssClass="form-control" style="border-style:groove;border-radius:30px;margin-left:9%;margin-top:-5%" placeholder="PatID"  Width="51.5%" Height="26px" runat="server"></asp:TextBox>
                                        <!--<asp:Button ID="Btn_Savedate" style="border-style:groove;border-radius:30px" runat="server" Text="PATID"  />-->
                                            <!--<button  type="button" class="btn btn-primary" onclick="getDate(this.val)"  style="background-color:lightgray;color:black;padding:12px;margin-left:60%;margin-top:-10%;border-style:groove;border-radius:10px;padding:3px;display:none"><strong><u style="text-underline-position:below">PatID</u></strong></button>-->
                                                <asp:Label ID="Label15" runat="server" Text="PatID"><p id="demo"></p></asp:Label>
                                                        <script type="text/javascript">
                                                            function getDate(val) {
                                                                var prev_id   =  document.getElementById('<%=DropDownList12.ClientID%>').value
                                                                var cmpstring  =  prev_id.toString().slice(0, 6);
                                                                var today      =  new Date().toISOString().slice(2, 10);
                                                                today          =  today.toString();
                                                                today          =  today.replaceAll("-", "");
                                                                var new_id;
                                                                if (today.localeCompare(cmpstring) == 0) {
                                                                    new_id = parseInt(prev_id) + 1;
                                                                }
                                                                else if (today.localeCompare(cmpstring) == 1) {
                                                                    new_id = parseInt(today.concat('0001'));
                                                                }
                                                                document.getElementById('<%=new_id.ClientID%>').value = new_id;
                                                                documrnt.getElementById('<%=new_id.ClientID%>').addEventListener("load", getDate);
                                                                // document.getElementById("demo").innerHTML = new_id;
                                                        }
                                                    </script>
                                                    </p>
                                            <p class="col-md-6">
                                                    <asp:Label ID="Label3" runat="server" Text="Name:" style="font-family:Arial;font-weight:bolder;color:black"><span class="glyphicon glyphicon-user" style="font-weight:bolder"></span></asp:Label>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextName" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <strong><asp:DropDownList ID="DropDownList2" CssClass="form-control" style="margin-left:5%;margin-top:-5.5%;border-style:groove;border-radius:30px;padding:5px;text-transform:fullsize-kana" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title" Width="114px" Height="26px"></asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=CIF5;Initial Catalog=CiftLab;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Title] FROM [tblCLTitleMaster]"></asp:SqlDataSource>
                                                                    </strong>
                                                                          <asp:TextBox ID="TextName" CssClass="form-control" placeholder="Name" style="margin-left:31%;margin-top:-5.5%;border-style:groove;border-radius:30px;padding:5px" plceholder="name"  runat="server" Width="66%" Height="26px" ></asp:TextBox> 
                                                                          </p>
                                                                             <p class="col-md-12"  style="margin-top:-1%;">
                                                                                <asp:Label ID="Label4" runat="server" Text="Age:" style="font-family:Arial;font-weight:bolder;color:black"></asp:Label>
                                                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextAge" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                     <strong><asp:TextBox ID="TextAge" CssClass="form-control" TextMode="Number" placeholder="Y" style="margin-left:4%;margin-top:-2%;border-style:groove;border-radius:30px;padding:5px"  Width="12.2%" Height="26px" runat="server"></asp:TextBox></strong>
                                                                                        <strong><asp:TextBox ID="TextMonth" CssClass="form-control" TextMode="Number" placeholder="M" style="margin-left:18%;margin-top:-2.7%;border-style:groove;border-radius:30px;padding:5px" Width="8%" Height="26px" runat="server"></asp:TextBox></strong>
                                                                                           <strong><asp:TextBox ID="TextDay" CssClass="form-control" TextMode="Number" placeholder="D" style="margin-left:28%;margin-top:-2.7%;border-style:groove;border-radius:30px;padding:5px" Width="8%" Height="26px" runat="server"></asp:TextBox></strong>
                                                                                            </p>
                                                                                             <p class="col-md-6" style="margin-left:43%;margin-top:-3%;">
                                                                                                   <asp:Label ID="Label5" runat="server" Text="Address:" style="margin-left:5%;font-family:Arial;font-weight:bolder;color:black"> </asp:Label>
                                                                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                <asp:TextBox ID="TextAddress" CssClass="form-control"  TextMode="SingleLine"  style="margin-left:20%;margin-top:-5%;border-style:groove;border-radius:30px;padding:5px" placeholder="Address"  runat="server" Width="92%" Height="26px"></asp:TextBox> 
                                                                                                           </p>
                                                                                                             <p class="col-md-12" style="margin-top:-0.3%">
                                                                                                                  <asp:Label ID="Label6" runat="server" Text="Phone:" style="font-family:Arial;font-weight:bolder;color:black"> <span class="glyphicon glyphicon-phone" style="font-weight:bolder"></span></asp:Label>
                                                                                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                            <asp:TextBox ID="TextPhone" CssClass="form-control" TextMode="Phone" style="margin-left:4%;margin-top:-2.5%;border-style:groove;border-radius:30px;padding:5px" placeholder="Phone"  runat="server" Width="36%" Height="26px"></asp:TextBox> 
                                                                                                                     </p>
                                                                                                                       <p class="col-md-6" style="margin-top:-4%;margin-left:45%">
                                                                                                                             <asp:Label ID="Label2" runat="server" Text="Sex:" style="margin-left:7%;font-family:Arial;font-weight:bolder;color:black"></asp:Label>
                                                                                                                                 <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" RepeatLayout="Flow"  BorderStyle="Ridge" style="margin-left:2%;border-style:groove;border-radius:30px;color:black" runat="server">
                                                                                                                                     <asp:ListItem Value="M">Male</asp:ListItem>
                                                                                                                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                                                                                                                           <asp:ListItem Value="O">Others</asp:ListItem>
                                                                                                                                        </asp:RadioButtonList>
                                                                                                                                           <script type="text/javascript" role="combobox">
                                                                                                                                                 $('input:radio[name="RadioButtonList2"]').change(function () {
                                                                                                                                                         if ($(this).val() == 'Male') {
                                                                                                                                                            if ($('select[name^="DropDownList2"] option:selected').attr("selected", null)) {
                                                                                                                                                                           document.getSelection('DropDownList2').selectAllChildren;
                                                                                                                                                                    }
                                                                                                                                                             }
                                                                                                                                                             else if ($(this).val() == 'Female') {
                                                                                                                                                                    if ($('select[name^="DropDownList2"] option:selected').attr("selected", null)) {
                                                                                                                                                                              document.getSelection('DropDownList2').selectAllChildren;
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                     else if ($(this).val == 'Others') {
                                                                                                                                                                        if ($('select[name^="DropDownList2"] option:selected').attr("selected", null)) {
                                                                                                                                                                            document.getSelection('DropDownList2').selectAllChildren;
                                                                                                                                                                         }
                                                                                                                                                                      }
                                                                                                                                                                  });
                                                                                                                                                             </script>
                                                                                                                                                          </p>
                                                                                                                                                       </div>
                                                                    </div>
                                                         <div class="clearfix" style="text-align-last:Center">
                                                          <button type="button" class="btn btn-primary" style="background-color:lightgrey;color:black;border-style:groove;border-radius:10px"  onclick="openWin()"><strong ><u style="text-underline-position:below">NEW</u></strong></button>
                                                             <script type="text/javascript">
                                                               function openWin() {
                                                                  window.open("http://localhost:62971/BILLING_1.aspx")
                                                              }
                                                           </script>
                                                       <asp:Button ID="Btn_SAVE" CssClass="btn btn-success" style="background-color:lightgray;color:black;border-style:groove;border-radius:10px" runat="server" Text="SAVE" Font-Underline="true" Font-Bold="true" OnClick="Btn_SAVE_Click"  />
                                                       <button type="button" class="btn btn-primary" style="background-color:lightgrey;color:black;border-style:groove;border-radius:10px" onclick="location.reload()"><strong><u style="text-underline-position:below">CANCEL</u></strong></button>
                                                   </div>
                                            </div>
                                      </div>
                            </section>
                    </form>
           </body>
     </html>