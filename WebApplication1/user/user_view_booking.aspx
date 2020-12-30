<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="user_view_booking.aspx.cs" Inherits="WebApplication1.user.user_view_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="html/sandboxed" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">User Section</strong>
                        </div>
                        <div class="card-body">

                                 <h1>Congratulations. Successful Booking!!!</h1> 

                        </div>
                    </div>
                </div>


    <script type="text/javascript">

         $(document).ready(function () {
             $('#example').DataTable({
                 "pagingType": "full_numbers"
             });

         });



     </script>
</asp:Content>
