import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';
import 'package:whatsapp_clone/features/chat/repository/chatRepository.dart';
import 'package:whatsapp_clone/models/chatContact.dart';
import 'package:whatsapp_clone/models/userModel.dart';

final ChatControllerProvider = Provider((ref) {
  final ChatRepository = ref.watch(ChatRepositoryProvider);
  return ChatController(chatRepository: ChatRepository, ref: ref);
});

class ChatController {
  final ChatRepository chatRepository;
  final ProviderRef ref;

  ChatController({required this.chatRepository, required this.ref});

  Stream<List<ChatContact>> chatContacts() {
    return chatRepository.getChatContacts();
  }

  void sendTextMessage(
    BuildContext context,
    String text,
    String receiverUserID,
  ) async {
    ref.read(UserDataProvider).whenData((value) =>
        chatRepository.sendTextMessage(
            context: context,
            text: text,
            receiverUserID: receiverUserID,
            senderUser: value!));
  }
}
