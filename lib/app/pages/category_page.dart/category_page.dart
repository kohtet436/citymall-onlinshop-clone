import 'package:cached_network_image/cached_network_image.dart';
import 'package:citymallonline/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:video_viewer/video_viewer.dart';
import 'package:flutter_html/flutter_html.dart';


import 'category_controller.dart';

class CategoryPage extends GetView<CategoryController>{
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {

    return 
    Scaffold(
      backgroundColor: Colors.grey.shade200,
       appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        title: SizedBox(
          height: 40,
          child: TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search,size: 30,),
                hintText: "Search products",
                isDense: true,
                border: OutlineInputBorder()),
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart_outlined,size: 30,
            color: Colors.blue,
          )
        ],
      ),
      body:Obx(()=> controller.isLoading==true?Center(child: CircularProgressIndicator(),):
      Padding(
        padding: EdgeInsets.all(12),
      
        child: ListView.builder(
          
          itemBuilder: (context,index)=>
        GestureDetector(
          onTap: (){
            Get.toNamed(Routes.categoryDetailPage,arguments: index);
          },
          child: Card(
            child: Container(
              height: 200,
              // width: 200,
              // color: Colors.red,
              
              child:Column(children: [
        
         Expanded(
           child: CachedNetworkImage(
             progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              Center(
                                                child: CircularProgressIndicator(
                                                    value: downloadProgress.progress),
                                              ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
           imageUrl: controller.model.response[index].thumbnail.toString()),
         ),
        
        
          
          
          
          
          
             
          // Html(
          
          //  data: controller.model.response[index].videos[0].e.toString(),
          //  onImageError: (exception, stackTrace) =>print("error"),
          //   """
          // <h1>Heading</h1>
          // <p>A paragraph with <strong>strong</strong> <em>emphasized</em> text.</p>
          // <ol>
          //   <li>List item number one</li>
          //   <li>
          //     Two
          //     <ul>
          //       <li>2.1 (nested)</li>
          //       <li>2.2</li>
          //     </ul>
          //   </li>
          //   <li>Three</li>
          // </ol>
          // <p>And YouTube video!</p>
          // <iframe src="https://www.youtube.com/embed/jNQXAC9IVRw" width="560" height="315"></iframe>
          // """
          
          
          
            // the first parameter (`html`) is required
            // controller.model.response[index].videos[0].embed.toString(),
           
            // webView: true,
          // ),
          
          
          
          
          
          // HtmlWidget(
          // controller.model.response[index].videos[0].embed.toString(),
          
          // ),
          
          
                  // VideoViewer(source: {"720":VideoSource(video: VideoPlayerController.network(controller.model.response[index].matchviewUrl.toString()
                    // "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
                  // ))},),
                  // CachedNetworkImage(imageUrl: controller.model.response[index].thumbnail,fit: BoxFit.contain,),
              Text(controller.model.response[index].title.toString(),style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),
              Text(controller.model.response[index].competition.toString()),
              
                  
                   
              ],)
              ),
          ),
        )
          )
        ),
      
      ));
  }
}