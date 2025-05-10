import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
              decoration: BoxDecoration(
                color: colorScheme.primary,
              ),
              child: Column(
                children: [
                  Text(
                    'Gallery',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'My Photo Collection',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.9),
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),

            // Image Grid
            Padding(
              padding: const EdgeInsets.all(24),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
                children: [
                  _buildGalleryImage(context, 'images/kharl 1.jpg'),
                  _buildGalleryImage(context, 'images/kharl 2.jpg'),
                  _buildGalleryImage(context, 'images/kharl 3.jpg'),
                  _buildGalleryImage(context, 'images/kharl 4.jpg'),
                  _buildGalleryImage(context, 'images/kharl 5.jpg'),
                  _buildGalleryImage(context, 'images/kharl 6.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryImage(BuildContext context, String imagePath) {
    return Hero(
      tag: imagePath,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Show full-screen image
            showDialog(
              context: context,
              builder: (context) => Dialog(
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    InteractiveViewer(
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
