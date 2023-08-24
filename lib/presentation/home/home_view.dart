import 'package:flutter/material.dart';
import 'package:flutterflix/presentation/presentation.dart';
import 'package:flutterflix/presentation/shared_widgets/shared_widgets.dart';

// List of dummy movie contents for building view only...
const List<String> dummyMovies = [
  "https://www.golocalprov.com/cache/images/remote/https_s3.amazonaws.com/media.golocalprov.com/Barbie_Movie_Poster_Warner_Brothers_Distribution_July_2023.png",
  "https://movies.universalpictures.com/media/06-opp-dm-mobile-banner-1080x745-now-pl-f01-071223-64bab982784c7-1.jpg",
  "https://filmfare.wwmindia.com/content/2022/jun/jawaan41654408101.jpg",
  "https://cdn.bollywoodmdb.com/fit-in/movies/largethumb/2022/fateh/poster.jpg",
  "https://www.boxofficemovies.in/now/wp-content/uploads/Baazaar-movie-new-poster-with-revised-release-date-as-26-Oct-2018.jpg",
];

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                width: size.height - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeroMovie(size: size),

                    const _HeroMenu(),
                    const SizedBox(height: 40),

                    // Movies Start Here
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeaderText("My List"),
                        const SizedBox(height: 10),
                        getHorizontalList(dummyMovies),
                        const SizedBox(height: 30),
                        const HeaderText("Popular On Netflix"),
                        const SizedBox(height: 10),
                        getHorizontalList(dummyMovies),
                        const SizedBox(height: 30),
                        const HeaderText("Trending Now"),
                        const SizedBox(height: 10),
                        getHorizontalList(dummyMovies),
                        const SizedBox(height: 30),
                        const HeaderText("Netflix Originals"),
                        const SizedBox(height: 10),
                        getHorizontalList(dummyMovies, height: 250, width: 180),
                        const SizedBox(height: 30),
                        const HeaderText("Anime"),
                        const SizedBox(height: 10),
                        getHorizontalList(dummyMovies),
                        const SizedBox(height: 30),
                      ],
                    )
                  ],
                ),
              ),

              // Netflix logo and user profile on top
              SizedBox(
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              AssetManager.netflixLogo,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                            GestureDetector(
                              child: Image.asset(
                                AssetManager.userAvatar,
                                fit: BoxFit.cover,
                                width: 40,
                                height: 40,
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _HeroTitle("TV Shows"),
                          _HeroTitle("Movies"),
                          Row(
                            children: [
                              _HeroTitle("Categories"),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: ColorManager.white,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox getHorizontalList(List<String> list,
      {double height = 170, double width = 160}) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(left: 15),
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(dummyMovies[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        itemCount: dummyMovies.length,
        shrinkWrap: true,
      ),
    );
  }
}

class HeroMovie extends StatelessWidget {
  const HeroMovie({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.5,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://movies.universalpictures.com/media/06-opp-dm-mobile-banner-1080x745-now-pl-f01-071223-64bab982784c7-1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // black overlay on the image
        Container(
          height: size.height * 0.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            ),
          ),
        ),

        // show all the genres of hero
        const Positioned(
          bottom: 50,
          left: 20,
          right: 20,
          child: FittedBox(
            child: Text(
              "Excting - Sci-Fi Drama - Sci-Fi Adventure",
              style: TextStyle(
                fontSize: 15,
                color: ColorManager.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _HeroTitle extends StatelessWidget {
  const _HeroTitle(
    this.title,
  );
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: ColorManager.white,
      ),
    );
  }
}

class _HeroMenu extends StatelessWidget {
  const _HeroMenu();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          child: const Column(
            children: [
              Icon(Icons.add, size: 25, color: Colors.white),
              Text(
                "My List",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              )
            ],
          ),
          onTap: () {
            // add this to my list
          },
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Play",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
          ),
          onPressed: () {
            // play video
          },
        ),
        GestureDetector(
          child: const Column(
            children: [
              Icon(Icons.info_outline, size: 25, color: Colors.white),
              SizedBox(
                height: 5,
              ),
              Text(
                "Info",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ],
          ),
          onTap: () {
            // get more info
          },
        ),
      ],
    );
  }
}
