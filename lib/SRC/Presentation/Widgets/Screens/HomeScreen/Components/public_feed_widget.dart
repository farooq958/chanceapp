import 'package:chance/SRC/Application/Utils/Extensions/extensions.dart';
import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Domain/feed_model.dart';
import 'package:chance/SRC/Presentation/Common/app_icon_handler.dart';
import 'package:chance/SRC/Presentation/Common/app_text.dart';
import 'package:chance/SRC/Presentation/Common/common_bottom_sheets.dart';
import 'package:chance/SRC/Presentation/Widgets/Screens/HomeScreen/Components/feeds_widget.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class PublicFeedWidget extends StatelessWidget {
   PublicFeedWidget({super.key});


 final  List<FeedModel> feedDto= [

   FeedModel("TopicName", "Lorem ipsum dolor sit amet consectetur. Sagittis diam auctor convallis justo pellentesque in eu amet sapien. Arcu pellentesque.Lorem ipsum dolor sit amet consectetur. Sagittis diam auctor convallis justo pellentesque in eu amet sapien. Arcu pellentesque.", "James", "1 hour ago", Assets.images.user1Image.path,null)
,
   FeedModel("TopicName", "Lorem ipsum dolor sit amet consectetur. Sagittis diam auctor convallis justo pellentesque in eu amet sapien. Arcu pellentesque.Lorem ipsum dolor sit amet consectetur. Sagittis diam auctor convallis justo pellentesque in eu amet sapien. Arcu pellentesque.", "James", "1 hour ago", Assets.images.user1Image.path,Assets.images.user2Image.path)
,
   FeedModel("TopicName", "Lorem ipsum dolor sit amet consectetur. Sagittis diam auctor convallis justo pellentesque in eu amet sapien. Arcu pellentesque.Lorem ipsum dolor sit amet consectetur. Sagittis diam auctor convallis justo pellentesque in eu amet sapien. Arcu pellentesque.", "James", "1 hour ago", Assets.images.user1Image.path,null)


 ];
  @override
  Widget build(BuildContext context) {
    final themeData=Theme.of(context);
    return Column(
children: [
  20.y,
  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    AppText("Feeds",style: themeData.textTheme.displaySmall,),

      const Spacer(),
      DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.filterIcon).onTapped(onTap: (){
        CommonBottomSheet.showBottomSheet(context: context, child: Container(height: 1.sh/2.5,

        child: Column(

          children: [
            20.y,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.grey, height: 3,width: 70.w,),
              ],
            ),
            20.y,

            Expanded(child: SingleChildScrollView(child:
            Column(


              children: [
                TopicTile(isSelected: true, title: 'Title 1',),
                TopicTile(isSelected: false, title: 'Title 2',),
                TopicTile(isSelected: false, title: 'Title 3',),
                TopicTile(isSelected: false, title: 'Title 4',),
                TopicTile(isSelected: false, title: 'Title 5',),
                TopicTile(isSelected: false, title: 'Title 6',),
                TopicTile(isSelected: false, title: 'Title 7',),
                

              ],
            ).padHorizontal(24),)
            
            )

          ],

        ),
        ));
      })
    
  ],),
  Expanded(child: ListView.separated(itemBuilder: (context,index){

    return  FeedsWidget(feedDto: feedDto[index],);

  }, separatorBuilder: (context,index){
    return 10.y;
  }, itemCount: feedDto.length))
  
  
],
      
    ).padHorizontal(15);
  }
}

class TopicTile extends StatelessWidget {
   TopicTile({super.key,required this.isSelected,required this.title});
bool  isSelected;
String title;
  @override
  Widget build(BuildContext context) {

    return  ListTile(
      tileColor: isSelected==true?Theme.of(context).primaryColor:null,

      leading: DynamicAppIconHandler.buildIcon(context: context,svg: Assets.icons.topicIcon,iconColor: isSelected==true?null:Colors.black),

      title:  Text('$title',style: Theme.of(context).textTheme.bodySmall?.copyWith(color: isSelected==true?Colors.white:Colors.black),),);
  }
}

