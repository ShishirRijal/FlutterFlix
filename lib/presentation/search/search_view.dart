import 'package:flutter/material.dart';
import 'package:flutterflix/presentation/resources/color_manager.dart';
import 'package:flutterflix/presentation/shared_widgets/shared_widgets.dart';

import '../../data/models/genre_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final genres = GenresList.fromJson(genreslist).list;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 10),
            const HeaderText("Search"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                style: const TextStyle(
                  color: ColorManager.white,
                  fontSize: 20,
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: ColorManager.grey,
                  ),
                  hintText: "Search movies,tv shows or cast...",
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  hintStyle: const TextStyle(
                    letterSpacing: .0,
                    color: ColorManager.grey,
                    fontWeight: FontWeight.normal,
                  ),
                  fillColor: Colors.white.withOpacity(.1),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: ColorManager.grey,
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: ColorManager.grey,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: ColorManager.grey,
                      width: 1,
                    ),
                  ),
                ),
                onSubmitted: (query) {
                  //
                },
              ),
            ),
            const SizedBox(height: 10),
            const HeaderText("Popular Genres"),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 28 / 16),
                children: [
                  for (var i = 0; i < 4; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GenreTile(
                        genre: genres[i],
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const HeaderText("All Genres"),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 28 / 16),
                children: [
                  for (var i = 4; i < genres.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GenreTile(
                        genre: genres[i],
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GenreTile extends StatelessWidget {
  final Genre genre;
  const GenreTile({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          // go to genre page
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: genre.color,
            child: Stack(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: -5,
                  right: -20,
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(380 / 360),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          genre.image,
                          fit: BoxFit.cover,
                          width: 60,
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  child: Text(
                    genre.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
