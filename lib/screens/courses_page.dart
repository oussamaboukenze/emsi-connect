import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});
  @override
  Widget build(BuildContext context) {
    final modules = [
      'Développement Multi-Plateforme',
      'Bases de données avancées',
      'Réseaux informatiques',
      'Intelligence artificielle',
      'Cybersécurité',
      'Gestion de projet',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Mes cours')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Modules du semestre'),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: modules.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    leading: const Icon(Icons.menu_book),
                    title: Text(modules[index]),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Module sélectionné : ${modules[index]}',
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ), // Ferme Expanded
        ], // Ferme children
      ), // Ferme Column
    );
  }
  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes cours')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Développement Multi-Plateforme'),
              subtitle: const Text('32 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Développement Multi-Plateforme',
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.storage),
              title: const Text('Bases de données avancées'),
              subtitle: const Text('30 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Bases de données avancées',
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.network_check),
              title: const Text('Réseaux informatiques'),
              subtitle: const Text('24 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Module sélectionné : Réseaux informatiques'),
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.psychology),
              title: const Text('Intelligence artificielle'),
              subtitle: const Text('36 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Module sélectionné : Intelligence artificielle',
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Cybersécurité'),
              subtitle: const Text('28 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Module sélectionné : Cybersécurité'),
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: const Icon(Icons.computer),
              title: const Text('Gestion de projet'),
              subtitle: const Text('20 heures'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Module sélectionné : Gestion de projet'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }*/
}
