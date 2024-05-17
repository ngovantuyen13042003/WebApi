namespace ShoesStore.DTO
{
    public class QueryParameters
    {
        public int pageNumber { get; set; } = 1; 
        public int pageSize { get; set; } = 10;
        public string search { get; set; }
        public string sort { get; set; } = "name";
        public bool IsSortAscending { get; set; } = true;
        public string filter { get; set; }
    }
}
