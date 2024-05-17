using CloudinaryDotNet;

namespace ShoesStore.Services
{
    public class CloudinaryService
    {
        private readonly Cloudinary cloudinary;
        public CloudinaryService(IConfiguration configuration)
        {
            var cloudinaryAccount = new Account(
                configuration["Cloudinary:CloudName"],
                configuration["Cloudinary:ApiKey"],
                configuration["Cloudinary:ApiSecret"]
            );
        }
        
        public Cloudinary GetCloudinary()
        {
            return cloudinary;
        }
    }
}
