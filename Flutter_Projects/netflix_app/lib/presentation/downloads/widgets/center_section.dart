import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/downloads_image_widget.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context).add(GetDownloadsImages());
    });
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        kHight20,
        const Text(
          'We\'ll download a personalised selection of movies and shows for you, so there\'s always something to watch on your device',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: kGreyColor),
        ),
        kHight10,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width * 0.75,
              child: state.isLoading || state.downloadsResultList.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: size.width * 0.33,
                            backgroundColor: kGreyColor.shade800,
                          ),
                        ),
                        DownloadsImageWidget(
                          imageUrl:
                              '$imageAppendUrl${state.downloadsResultList[0].posterPath}',
                          imageAngle: 20,
                          imageMargin: const EdgeInsets.only(
                            left: 160,
                            bottom: 20,
                          ),
                          isCenterImage: false,
                        ),
                        DownloadsImageWidget(
                          imageUrl:
                              '$imageAppendUrl${state.downloadsResultList[1].posterPath}',
                          imageAngle: -20,
                          imageMargin: const EdgeInsets.only(
                            right: 160,
                            bottom: 20,
                          ),
                          isCenterImage: false,
                        ),
                        DownloadsImageWidget(
                          imageUrl:
                              '$imageAppendUrl${state.downloadsResultList[2].posterPath}',
                          imageAngle: 0,
                          imageMargin: const EdgeInsets.only(top: 24),
                        ),
                      ],
                    ),
            );
          },
        ),
        kHight10
      ],
    );
  }
}
