//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApp1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Jures
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public string Patronomic { get; set; }
        public int GenderId { get; set; }
        public string Mail { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }
        public int CountryId { get; set; }
        public string Phone { get; set; }
        public string Type { get; set; }
        public string Password { get; set; }
        public string Photo { get; set; }
    
        public virtual Country Country { get; set; }
        public virtual Gender Gender { get; set; }
    }
}
