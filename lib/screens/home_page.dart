import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

import 'profile_page.dart';

class ElectraHomePage extends StatelessWidget {
  const ElectraHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electra"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to the ProfilePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting and Election Progress
              const Text(
                "Welcome back, User!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Presidential Election 2025",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      LinearPercentIndicator(
                        lineHeight: 12.0,
                        percent: 0.65, // Example progress value (65%)
                        backgroundColor: Colors.grey.shade300,
                        progressColor: Colors.blue,
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          Future.delayed(const Duration(milliseconds: 100), () {
                            Navigator.pushNamed(context, '/voting');
                          });
                        },
                        child: const Text("Cast Your Vote Now"),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),
              // Live Results for Main Race
              const Text(
                "Live Results",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Card(
                elevation: 4,
                child: Column(
                  children: [
                    _candidateResult("Candidate A", "Party X", 45),
                    _candidateResult("Candidate B", "Party Y", 35),
                    _candidateResult("Candidate C", "Party Z", 20),
                    TextButton(
                      onPressed: () {},
                      child: const Text("View Full Results"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              // Quick Actions Section
              const Text(
                "Quick Actions",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _quickAction("Cast Your Vote", Icons.how_to_vote, () {}),
                  _quickAction("View Elections", Icons.event, () {}),
                  _quickAction("Voting History", Icons.history, () {}),
                  _quickAction("Support", Icons.help, () {}),
                ],
              ),

              const SizedBox(height: 16),
              // News Section
              const Text(
                "News & Announcements",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _newsCard(
                "Electoral Commission Updates Voter Guidelines",
                "Ensure you meet the requirements before the next election.",
              ),
              _newsCard(
                "Voting System Enhanced with Blockchain",
                "A new layer of security has been added to protect your votes.",
              ),

              const SizedBox(height: 16),
              // Election Calendar
              const Text(
                "Election Calendar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _calendarWidget(),

              const SizedBox(height: 16),
              // Stats & Analytics Section
              const Text(
                "Statistics & Insights",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _statsWidget(),

              const SizedBox(height: 16),
              // Footer Section
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Terms of Service | Privacy Policy"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widgets
  Widget _candidateResult(String name, String party, int percentage) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(name[0]),
      ),
      title: Text(name),
      subtitle: Text(party),
      trailing: Text("$percentage%"),
    );
  }

  Widget _quickAction(String label, IconData icon, VoidCallback onTap) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 32, color: Colors.blue),
          onPressed: onTap,
        ),
        Text(label),
      ],
    );
  }

  Widget _newsCard(String title, String description) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _calendarWidget() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("March 2025",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: List.generate(31, (index) {
                return CircleAvatar(
                  backgroundColor:
                      (index + 1) % 5 == 0 ? Colors.blue : Colors.grey.shade300,
                  child: Text("${index + 1}"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statsWidget() {
    return const Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Registered Voters: 500,000"),
            SizedBox(height: 8),
            Text("Voter Turnout: 75%"),
            SizedBox(height: 8),
            Text("Elections Completed: 10"),
          ],
        ),
      ),
    );
  }
}
