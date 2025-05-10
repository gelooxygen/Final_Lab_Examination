import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                    'About Me',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Get to know me better',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.9),
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),

            // About Content
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Personal Info Section
                  _buildSection(
                    context,
                    'Personal Information',
                    Icons.person_outline,
                    [
                      _buildInfoRow('Name', 'Kharl Angelo R. Dumangas'),
                      _buildInfoRow('Age', '23 years old'),
                      _buildInfoRow(
                          'Location', 'Cabuyao City of Laguna , Philippines'),
                      _buildInfoRow('Email', 'kharlgelo@gmail.com'),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Education Section
                  _buildSection(
                    context,
                    'Education',
                    Icons.school_outlined,
                    [
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          SizedBox(
                            width: 300,
                            child: _buildEducationCard(
                              context,
                              'College',
                              'Bachelor of Science in Information Technology',
                              'University of Cebu - Main Campus',
                              '2021 - Present',
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: _buildEducationCard(
                              context,
                              'Senior High School',
                              'ICT Track',
                              'AMA Calamba City Campus',
                              '2019 - 2021',
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: _buildEducationCard(
                              context,
                              'Junior High School',
                              'Regular Program',
                              'Pulo National High School',
                              '2015 - 2019',
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: _buildEducationCard(
                              context,
                              'Elementary',
                              'Regular Program',
                              'San Isidro Elementary School',
                              '2009 - 2015',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Interests Section
                  _buildSection(
                    context,
                    'Interests',
                    Icons.favorite_outline,
                    [
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          _buildInterestChip(context, 'Programming'),
                          _buildInterestChip(context, 'Web Development'),
                          _buildInterestChip(context, 'Mobile Development'),
                          _buildInterestChip(context, 'UI/UX Design'),
                          _buildInterestChip(context, 'Photography'),
                          _buildInterestChip(context, 'Gaming'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    IconData icon,
    List<Widget> children,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...children,
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationCard(
    BuildContext context,
    String level,
    String program,
    String school,
    String year,
  ) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              level,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              program,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              school,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              year,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestChip(BuildContext context, String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor:
          Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
    );
  }
}
