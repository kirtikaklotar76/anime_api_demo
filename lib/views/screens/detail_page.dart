import 'package:anime_api_demo/controllers/anime_detail_controller.dart';
import 'package:anime_api_demo/models/anime_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimeDetailController>(
        init: AnimeDetailController(),
        builder: (controller) {
          AnimeModel anime = controller.getAnimeDetail();
          return Scaffold(
            appBar: AppBar(
              title: Text(anime.title ?? ""),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 300,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          anime.images!['jpg']!.largeImageUrl ??
                                              ""))),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Divider(),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Title : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  anime.title ?? "-",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "English Title :  ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.titleEnglish ?? "",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Japanese Title  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.titleJapanese ?? "-",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Type  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.type!.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          // const SizedBox(height: 10),
                          const Divider(),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Source  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.source!.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Producers  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "${anime.producers?.map((e) => e.name.toString())}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Licensors  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "${anime.licensors?.map((e) => e.name.toString())}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),

                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Studios  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "${anime.studios?.map((e) => e.name.toString())}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Episodes  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.episodes.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),

                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Duration  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.duration ?? "-",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Rating  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.rating!.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Text(
                                  "Synopsis  : ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    anime.synopsis ?? "-",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      wordSpacing: -0.5,
                                    ),
                                  )),
                            ],
                          ),
                          const Divider(),
                          // const SizedBox(height: 10),
                          anime.background != null
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "Background  : ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                          anime.background ?? "",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            wordSpacing: -0.5,
                                          ),
                                        )),
                                  ],
                                )
                              : const Text(""),
                        ],
                      ),
                    ),
            ),
          );
        });
  }
}
