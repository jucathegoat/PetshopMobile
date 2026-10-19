import 'package:flutter/material.dart';

class TelaAgendamento extends StatefulWidget {
  const TelaAgendamento({super.key});

  @override
  State<TelaAgendamento> createState() => _TelaAgendamentoState();
}

class _TelaAgendamentoState extends State<TelaAgendamento> {
  final _petController = TextEditingController();
  DateTime? _dataSelecionada;
  TimeOfDay? _horaSelecionada;

  Future<void> _selecionarData() async {
    final data = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (data != null) {
      setState(() => _dataSelecionada = data);
    }
  }

  Future<void> _selecionarHora() async {
    final hora = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (hora != null) {
      setState(() => _horaSelecionada = hora);
    }
  }

  void _confirmarAgendamento() {
    if (_petController.text.isEmpty || _dataSelecionada == null || _horaSelecionada == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preencha todos os campos')),
      );
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Agendamento realizado!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agendamento')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _petController,
              decoration: const InputDecoration(labelText: 'Nome do pet'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _selecionarData,
                    child: Text(_dataSelecionada == null
                        ? 'Escolher data'
                        : '${_dataSelecionada!.day}/${_dataSelecionada!.month}/${_dataSelecionada!.year}'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _selecionarHora,
                    child: Text(_horaSelecionada == null
                        ? 'Escolher hora'
                        : _horaSelecionada!.format(context)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _confirmarAgendamento,
              child: const Text('Confirmar agendamento'),
            ),
          ],
        ),
      ),
    );
  }
}
