import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/helpers/size_config.dart';
import 'package:booking_doctor/core/widgets/search_text_form_field.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_state.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/home_image_widget.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/list_doctoe_widget.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/list_of_category.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/home_text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: SizeConfig.blockSizeVertical * 1),
            ),
            const SliverToBoxAdapter(child: SearchTextFormField()),
            SliverToBoxAdapter(
              child: SizedBox(height: SizeConfig.blockSizeVertical * 2),
            ),
            const SliverToBoxAdapter(child: HomeTextRowWidget()),
            SliverToBoxAdapter(
              child: SizedBox(height: SizeConfig.blockSizeVertical * 1),
            ),
            SliverToBoxAdapter(child: ListOfCategory()),
            SliverToBoxAdapter(
              child: SizedBox(height: SizeConfig.blockSizeVertical * 2),
            ),
            const SliverToBoxAdapter(child: HomeImageWidget()),
            SliverToBoxAdapter(
              child: SizedBox(height: SizeConfig.blockSizeVertical * 2),
            ),
            const SliverToBoxAdapter(
              child: HomeTextRowWidget(leftText: AppStrings.doctorsNearYou),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: SizeConfig.blockSizeVertical * 1),
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is HomeLoaded) {
                  return ListOfDoctors(
                    doctors: context.read<HomeCubit>().doctorsNearYou,
                  );
                }
                if (state is HomeFaliure) {
                  return const SliverToBoxAdapter(
                    child: Center(child: Text('Opps, Error')),
                  );
                }
                return const SliverToBoxAdapter(child: SizedBox.shrink());
              },
            ),
          ],
        ),
      ),
    );
  }
}
