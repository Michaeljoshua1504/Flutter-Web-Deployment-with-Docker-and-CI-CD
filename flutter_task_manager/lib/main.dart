import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // GitHub repository URL
  final String repoUrl =
      'https://github.com/Michaeljoshua1504/Flutter-Web-Deployment-with-Docker-and-CI-CD';

  Future<void> _openRepo() async {
    final uri = Uri.parse(repoUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $repoUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Deployment with Docker and CI/CD',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Web Deployment with Docker and CI/CD'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.cloud_done, size: 80),
                  const SizedBox(height: 24),
                  const Text(
                    'Flutter Web Deployment with Docker and CI/CD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'This project demonstrates how to build, containerize, '
                    'and deploy a Flutter Web application using Docker, Nginx, '
                    'Docker Compose, GitHub Actions, and GitHub Pages.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Technologies Used',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Flutter • Docker • Nginx • Docker Compose • '
                    'GitHub Actions • GitHub Pages',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),

                  // GitHub Repository Button
                  ElevatedButton.icon(
                    onPressed: _openRepo,
                    icon: const Icon(Icons.code),
                    label: const Text('View Project on GitHub'),
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    'Created by Padamuthum Michael Joshua',
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}