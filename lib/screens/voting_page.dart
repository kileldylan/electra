import 'package:flutter/material.dart';

class VotingPage extends StatefulWidget {
  const VotingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VotingPageState createState() => _VotingPageState();
}

class _VotingPageState extends State<VotingPage> {
  final _formKey = GlobalKey<FormState>();
  String? nationalId;
  String? selectedCandidate;
  bool isSubmitting = false;

  // Mock candidates for demonstration
  final List<Map<String, dynamic>> candidates = [
    {
      'id': 1,
      'name': 'Candidate A',
      'party': 'Party X',
      'description': 'Experienced leader with a vision for growth.'
    },
    {
      'id': 2,
      'name': 'Candidate B',
      'party': 'Party Y',
      'description': 'A young and dynamic leader focused on innovation.'
    },
    {
      'id': 3,
      'name': 'Candidate C',
      'party': 'Party Z',
      'description': 'Committed to transparency and accountability.'
    },
  ];

  // Example: Simulated end time for voting (replace with actual contract logic)
  final DateTime votingEndTime = DateTime.now().add(const Duration(hours: 5));

  void castVote() async {
    if (!_formKey.currentState!.validate()) return;

    _formKey.currentState!.save();

    setState(() {
      isSubmitting = true;
    });

    // Simulated delay for smart contract interaction
    await Future.delayed(const Duration(seconds: 2));

    // Replace with actual smart contract interaction logic
    bool success = true; // Simulate a successful transaction

    setState(() {
      isSubmitting = false;
    });

    if (success) {
      // Show success dialog
      showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Vote Submitted'),
          content: Text(
            'Your vote for $selectedCandidate has been recorded successfully. Thank you for participating!',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      // ignore: dead_code
    } else {
      // Show error dialog
    }
  }

  Widget buildCandidateCard(Map<String, dynamic> candidate) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo,
          child: Text(candidate['name'][0]),
        ),
        title: Text(candidate['name'],
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${candidate['party']} - ${candidate['description']}'),
        trailing: Radio<String>(
          value: candidate['name'],
          groupValue: selectedCandidate,
          onChanged: (value) {
            setState(() {
              selectedCandidate = value;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electra Voting'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Voting Guidelines'),
                  content: const Text(
                    '1. Use your National/Student ID to verify your identity.\n'
                    '2. Select one candidate from the list.\n'
                    '3. Ensure you cast your vote before the voting period ends.\n'
                    '4. Once submitted, your vote cannot be changed.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Got it!'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cast Your Vote',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  'Voting ends at: ${votingEndTime.toLocal()}',
                  style: const TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'National/Student ID',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.badge),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your National/Student ID.';
                    }
                    if (value.length < 8) {
                      return 'National ID must be at least 8 characters long.';
                    }
                    return null;
                  },
                  onSaved: (value) => nationalId = value,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Select a Candidate:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...candidates.map((candidate) => buildCandidateCard(candidate)),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: isSubmitting
                        ? null
                        : () {
                            if (selectedCandidate == null) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Selection Error'),
                                  content:
                                      const Text('Please select a candidate.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                              return;
                            }
                            castVote();
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: isSubmitting
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : const Text('Submit Vote'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
