﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_app_one
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //signupclick.
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values (@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob",TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email",TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state",DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city",TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode",TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address",TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id",TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password",TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status","pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful Go To Login Page'));</script>");

            
            
        }
    }
}