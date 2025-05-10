import 'package:flutter/material.dart';

class MissionVisionScreen extends StatelessWidget {
  const MissionVisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
              ),
              child: const Column(
                children: [
                  Text(
                    'Mission & Vision',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pamantasan ng Cabuyao',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // Mission Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Mission'),
                  const SizedBox(height: 20),
                  _buildContentCard(
                    'As an institution of higher learning, UC (PnC) is committed to equip individuals with knowledge, skills, and values that will enable them to achieve their professional goals & provide leadership and service for national development.',
                    Icons.flag,
                  ),
                ],
              ),
            ),

            // Vision Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Vision'),
                  const SizedBox(height: 20),
                  _buildContentCard(
                    'A premier institution of higher learning in Region IV, developing globally-competitive and value-laden professionals and leaders instrumental to community development and nation-building.',
                    Icons.visibility,
                  ),
                ],
              ),
            ),

            // Core Values Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Core Values'),
                  const SizedBox(height: 20),
                  _buildContentCard(
                    'As a God-Fearing Institution Respecting Multi-faith of people, PnC Adheres to the following core values:',
                    Icons.favorite,
                  ),
                  const SizedBox(height: 20),
                  _buildCoreValuesList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildContentCard(String content, IconData icon) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.blue.shade800,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoreValuesList() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildCoreValueItem(
              'P',
              'Personal Dignity',
              'Respecting the worth and uniqueness of every individual',
            ),
            const Divider(),
            _buildCoreValueItem(
              'N',
              'Nurturing Community',
              'Fostering a supportive and inclusive environment',
            ),
            const Divider(),
            _buildCoreValueItem(
              'C',
              'Commitment to Excellence',
              'Striving for the highest standards in all endeavors',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoreValueItem(String letter, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                letter,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
