import 'dart:developer';

import 'package:anime_api_demo/controllers/home_controller.dart';
import 'package:anime_api_demo/models/anime_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Anime"),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(16),
              child: controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.allAnimeData.length,
                      itemBuilder: (context, index) {
                        AnimeModel anime = controller.allAnimeData[index];
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed('/detail_page', arguments: anime);
                            log("-----------Arg : ${anime}");
                          },
                          child: Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                  foregroundImage: NetworkImage(
                                      anime.images!['jpg']!.imageUrl ?? "")),
                              title: Text(anime.title ?? ""),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          );
        });
  }
}
