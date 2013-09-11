using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApplicationLayer;
using ApplicationLayer.Controllers;
using ApplicationLayer.Utils;
using System.Net.Mail;

namespace PresentationLayer.StoreClerk
{
    public partial class PurchaseOrder : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SupplierController suppliercontroller = new SupplierController();
            StationeryController stationerycontroller = new StationeryController();

            int stationery_id;
            if(int.TryParse(Request.QueryString["id"],out stationery_id))
            {
                stationery_id = Convert.ToInt16(Request.QueryString["id"].ToString());
                if (stationery_id < 1)
                {
                    Response.Redirect("~/StoreClerk/InventoryStatus.aspx");
                }
                if (!Page.IsPostBack)
                {
                    User user = (User)Session["user"];
                    Stationery stationery = stationerycontroller.actionGetStationeryByID(stationery_id);
                    Supplier supplier = suppliercontroller.actionGetSuppierByID(Convert.ToInt32(stationery.first_supplier));
                    ui_from_textbox.Text = user.email;
                    ui_to_textbox.Text = supplier.email;
                    ui_subject_textbox.Text = "Purchase Order from Logic University.";
                    ui_message_textbox.Text = "<p>Hello " + supplier.contact_name + ",</p>" +
                                              "<p>I would like to order the following item for our store. Please kindly proceed.</p>" +
                                              "<p><b>Stationery Name : "+stationery.stationery_name+"<br />"+
                                              "Amount : " + stationery.reorder_quantity + "</b></p>" +
                                              "<p>Thank you,<br /> "+
                                              user.firstname + " " + user.lastname + ".</p>";


                    //+ stationery.stationery_name + stationery.category.ToString() + stationery.reorder_quantity.ToString()+""+"Regards, Logic University";
                   
                  
                }
            }
        }

        protected void ui_send_button_Click(object sender, EventArgs e)
        {
         
            Helper.sendMail(ui_to_textbox.Text,ui_from_textbox.Text,ui_subject_textbox.Text,ui_message_textbox.Text);
            ui_to_textbox.Text = "";
            ui_from_textbox.Text = "";
            ui_subject_textbox.Text = "";
            ui_message_textbox.Text = "";
            Response.Cookies.Add(new HttpCookie("flash_message", "Order Email Sent.") { Path = "/" });
            Response.Cookies.Add(new HttpCookie("flash_css", "alert alert-success") { Path = "/" });
            Response.Redirect("~/StoreClerk/InventoryStatus.aspx");
            
        }

        protected void ui_discard_button_Click(object sender, EventArgs e)
        {
            ui_to_textbox.Text = "";
            ui_from_textbox.Text = "";
            ui_subject_textbox.Text = "";
            ui_message_textbox.Text = "";

            Response.Redirect("~/StoreClerk/InventoryStatus.aspx");
        }
    }
}