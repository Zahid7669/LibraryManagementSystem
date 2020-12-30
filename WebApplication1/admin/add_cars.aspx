<%@Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_cars.aspx.cs" Inherits="WebApplication1.admin.add_cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add New books</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                               
                                  
                                  <form action="" id="fo1" runat="server" method="post" novalidate="novalidate">
                                      
                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Car Model</label>
                                          <asp:TextBox ID="carmodel" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Car Image</label>
                                          <asp:FileUpload ID="fo" runat="server" class="form-control" />
                                      </div>


                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Car Number</label>
                                          <asp:TextBox ID="carnumber" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Available date</label>
                                          <asp:TextBox ID="date" runat="server"  class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Rent/day</label>
                                          <asp:TextBox ID="rent" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                          
                                                      

                                      <div>
                                          <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Car" OnClick="b1_Click" />
                                          <div class="alert alert-success" id="msg" runat="server" style="margin-top:10px; display:none">
                                            <strong>Your Car Has Succesfully Added!</strong> 
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->

    <script type="text/javascript">
    var dateToday = new Date();
        var dates = $("#date").datepicker({
            defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
            minDate: dateToday,
            onSelect: function(selectedDate) {
                var option = this.id == "from" ? "minDate" : "maxDate",
                    instance = $(this).data("datepicker"),
                    date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
                dates.not(this).datepicker("option", option, date);
            }
        });
    </script>
</asp:Content>
