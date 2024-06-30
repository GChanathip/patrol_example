class Product {
  final String jobName;
  final String description;
  final double price;
  final String sellerName;
  final double rating;
  final String imagePath;

  const Product({
    required this.jobName,
    required this.description,
    required this.price,
    required this.sellerName,
    required this.rating,
    required this.imagePath,
  });

  static const mockData = [
    Product(
      jobName: 'Website Development',
      description: 'Build a responsive website using HTML, CSS, and JavaScript.',
      price: 500.00,
      sellerName: 'John Doe',
      rating: 4.8,
      imagePath: 'assets/images/web_development.webp',
    ),
    Product(
      jobName: 'Graphic Design',
      description: 'Create eye-catching graphics for social media and marketing.',
      price: 150.00,
      sellerName: 'Jane Smith',
      rating: 4.7,
      imagePath: 'assets/images/graphic_design.webp',
    ),
    Product(
      jobName: 'Content Writing',
      description: 'Write SEO-friendly articles and blog posts.',
      price: 100.00,
      sellerName: 'Alice Johnson',
      rating: 4.9,
      imagePath: 'assets/images/content_writing.webp',
    ),
    Product(
      jobName: 'Mobile App Development',
      description: 'Develop a mobile application for Android and iOS platforms.',
      price: 1200.00,
      sellerName: 'David Brown',
      rating: 4.6,
      imagePath: 'assets/images/mobile_app.webp',
    ),
    Product(
      jobName: 'SEO Optimization',
      description: 'Improve website ranking on search engines with SEO techniques.',
      price: 300.00,
      sellerName: 'Emma Davis',
      rating: 4.9,
      imagePath: 'assets/images/seo_optimization.webp',
    ),
    Product(
      jobName: 'Digital Marketing',
      description: 'Manage digital marketing campaigns to boost online presence.',
      price: 450.00,
      sellerName: 'Michael Wilson',
      rating: 4.8,
      imagePath: 'assets/images/digital_marketing.webp',
    ),
    Product(
      jobName: 'Video Editing',
      description: 'Edit and produce high-quality videos for various purposes.',
      price: 200.00,
      sellerName: 'Olivia Miller',
      rating: 4.7,
      imagePath: 'assets/images/video_editing.webp',
    ),
    Product(
      jobName: 'Translation Services',
      description: 'Translate documents and content between multiple languages.',
      price: 80.00,
      sellerName: 'Liam Anderson',
      rating: 4.9,
      imagePath: 'assets/images/translation_services.webp',
    ),
    Product(
      jobName: 'Voice Over',
      description: 'Provide professional voice over services for videos and ads.',
      price: 250.00,
      sellerName: 'Sophia Martinez',
      rating: 4.8,
      imagePath: 'assets/images/voice_over.webp',
    ),
    Product(
      jobName: 'Data Analysis',
      description: 'Analyze data and provide insights for business decisions.',
      price: 600.00,
      sellerName: 'James Rodriguez',
      rating: 4.7,
      imagePath: 'assets/images/data_analysis.webp',
    ),
  ];
}
