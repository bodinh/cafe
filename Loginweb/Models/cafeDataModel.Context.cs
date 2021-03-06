﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Loginweb.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class QuanLyCafeEntities3 : DbContext
    {
        public QuanLyCafeEntities3()
            : base("name=QuanLyCafeEntities3")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<account> accounts { get; set; }
        public virtual DbSet<bill> bills { get; set; }
        public virtual DbSet<billinfo> billinfoes { get; set; }
        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<food> foods { get; set; }
        public virtual DbSet<staff> staffs { get; set; }
        public virtual DbSet<tablefood> tablefoods { get; set; }
    
        public virtual int deletestaffaccount(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("deletestaffaccount", idParameter);
        }
    
        public virtual int Addstaffaccount(string name, string status, string position, string email, Nullable<int> idaccount, string username, string password, string type)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var statusParameter = status != null ?
                new ObjectParameter("status", status) :
                new ObjectParameter("status", typeof(string));
    
            var positionParameter = position != null ?
                new ObjectParameter("position", position) :
                new ObjectParameter("position", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var idaccountParameter = idaccount.HasValue ?
                new ObjectParameter("idaccount", idaccount) :
                new ObjectParameter("idaccount", typeof(int));
    
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Addstaffaccount", nameParameter, statusParameter, positionParameter, emailParameter, idaccountParameter, usernameParameter, passwordParameter, typeParameter);
        }
    
        public virtual int Addstaffaccountlatest(string name, string status, string position, string email, Nullable<int> idaccount, string username, string password, string type)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var statusParameter = status != null ?
                new ObjectParameter("status", status) :
                new ObjectParameter("status", typeof(string));
    
            var positionParameter = position != null ?
                new ObjectParameter("position", position) :
                new ObjectParameter("position", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var idaccountParameter = idaccount.HasValue ?
                new ObjectParameter("idaccount", idaccount) :
                new ObjectParameter("idaccount", typeof(int));
    
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Addstaffaccountlatest", nameParameter, statusParameter, positionParameter, emailParameter, idaccountParameter, usernameParameter, passwordParameter, typeParameter);
        }
    }
}
