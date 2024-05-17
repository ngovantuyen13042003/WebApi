using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class Customer
{
    public int Id { get; set; }

    public string Fullname { get; set; } = null!;

    public DateOnly? DateOfBirth { get; set; }

    public string? Address { get; set; }

    public string? Avata { get; set; }

    public int? AccountId { get; set; }

    public bool Enabled { get; set; }

    public virtual Account? Account { get; set; }

    public virtual ICollection<Cart> Carts { get; set; } = new List<Cart>();

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
