import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsTile({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                )
              : Image.asset(
                  'assets/images/cards/health.avif',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          articleModel.subTitle ??
              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEX///+qqqqmpqajo6MxMTGysrI3Nzc0NDQuLi719fU9PT05OTm9vb3d3d3y8vL4+Pjr6+vNzc3X19dJSUnn5+e3t7fMzMx2dnbExMSvr69BQUFubm7g4ODT09OTk5MpKSlYWFh/f39jY2ODg4OcnJwiIiJycnJWVlaLi4tHR0cbGxtfX1+UlJRpaWkRERECAgIPxWXtAAAPCklEQVR4nO1diXaqvBplCIPMIlCgWlpbW21P//v+b3czMoNRQUG71zrrVA2QnW9MvgCC8Ic//OEP9wPX8bwgCNbwn+c57q27MxwWgb2MQ1GGkAqgj2IYL+1gcesOXgDX82NFQrzELiCukhL73vxEurDjRK5Sk6qo/iQnsT0fabrrWJSliphExYqjjW/bawTb9jdRbCliRcCSLMbrGchy4Yc5O8hNtKI+U4NGGlliIWxJDv1Ji9L1FUYPisfyAz6RuIFvicWBij9VSa6Z9JC+nWxV0HLF/PhwPUoPL4ITSXn3fOfck+QqLknRuScZBwHtmSRb9mUq5toWO1UYDNS7y2GL0pAW5NrUmiXRHuB0l8On/IbUKyeiJxX9wc55Lig/WRnaN6wVeQocqX7KljfCyT1LvrWuBgnhF4/l9pyYcExu43NcMsRyPGYSsiAcZesGScCGXnrssOXQgdyMfJ06PKygkjKG/TWupeBrJde4Vo5IxvHhWi7AxvmSHF3pcnBQxStfkA2peCUxYguUkuvmjQ42i6tYoxte7VJVkIENR3eqgXQDARIQMUojx0Y8kFe1wDKwNY6rPtY1RrEHRIOs0c7vIjWRlFuuMbgoNkrJSF3wrh4j2kDixihhI8BGcPs5qY37McJCjj/e2J0IokuDTxuxEx1L/0+Em4zgUpH2S8qw57wAKOsY1iNgguM56dNhDUwRE4yHO98AiFHUGIziBAkSikNJcTNFgpTiIO7GnyZBSnGAoBFMlSCleHHo96bmRcvAHvXCJMRF+cN04mAdIcqzLktDUPaQDNSdMXBx/5AaXDhG4wLp2CVGtBlAz0cG9hNnxwzkRicwXeoHmkzJZ646uIMmRqMhOt+Swkm70QIK7Gd4zoGbqXsZBqxrZ5iid4F+XxnYX5zuEMVZGCEBMkXxnIOmHOqrSE4XB9bRae3Z6YNzup4ml8TRG2BzqsqdfMDNcaJI3HnpKALWU/7YZs3IjzIg18idguNp/Zi9GQXSCfEb6fTUE+4mbH7fgZrOIR+tQ+EWjDj5SWE7UAznymz8U0x2UkAOkmd1UZxdpGBw+ISIRDjN5dHjiLmEiEQ46VseerDgEaI9YxESIR5zp/O1QgQOSwxm60gJrKPbfcKZxkIGFBN7V6WQlOeYzhRQjlgZTNClCd5ydALWUv+0SJrjpKKKfgrHBmAO6FfDcNahgsDp8zXu7P0MgtKznAFT0hnOfOtALLqS0z7280GPJqK8dc75DIPVOXe4DyXFk4cONQ3vQkmJmrZ6084fZocuUa17fNC84HcE/fgOwj0BCvpts3jxjCrjRNFOZdFBfI6IW+OFfSexAqGdSzvveaJdHxMuM/R8O/e3rl96AIZjfexfxJYapeOTBy2gI4vm6FOxWgLPVBtyN5b373spYk7f9Uo43s22/XwuX8qm7MCODYT3347FT+ct04AOADAa57B237j38g5kT/m3vzrYFcmjCM9a1p/FHp4OI3sjbt//1nP8d5yi1RIRPb5oGKqHVGOH6CrlY2uGtvqXSG/A0N9qR8QqwAxF85ACNz80PahFerFKU7WULPuqqRpvciLtD8D8xhR9cFAziv8dZ4giYr0V+o6jvggZGuZHjSHsr07+Wjyb2nsXw3SrMVKiuk0LhrZubI3X/Ih1luqMr78lGuAD9RRHH7TIK+ZLSkM13RuAaFTO8DXVcwN8NvTqOkjB0LC0H/rlSrPMguHefF0DPc9CVikoWaVIGWqnMHRbXI3CF+9DFTiq+YL/ZgxjYPzLGyy09KtyRMEQCLpO1MTX0wUoGKpqIhxMdo5QM5s9OZGh0LLpkHOtO1R1QTZ17BQZw08jK7mJF0Ov+MWCoS68A6Lge/DP1XOGsQbPJ5sq/fiTG3oJpzK0GituMIJwrbJBhq6gGtjWGMMs3ZZabDSzcu4yw41u4O80fb0oGP6az+hklIKbGXVnJZzOMJLq0T3gzGggw4WQqBnSNsowAMZHqYWrV3tYZigcsMHG4FVwcoaU29b8pFxalBR5GstdEPDMYe2G42x+08NQSI2ngiEUWiW66ulvJ8MPgKT/DJISQwn9gM+MdT/W1BZzQdGChsPst/lzA02JLRtS7WNoacjWKMOo1iUzfe1kGOgwJHoZtNuC4cHco/9cKrtYZfoY/Pwi7M9hiKxuWfkm5lzOJwyFlfFblmHFbYGKWVYZClsQChKAGpAz9AEgkevNwE64kOH6P5QkISM9XUuFRqE35JwcUoYxgAZFGa6BKZeb6MZT+WOVYQi2wgpEJYbvxoo09LFilJR+Ecdx9GV8EoaneRqhsfebd9M6ZSi8whyk8KWfpRY2MMuOp8ZQyDRLQw6VMXRB+vX5jPCZGkghnQz/x/B6JkOlnnvzLpUyhhsdRA5l+JPqpRaSCSozjBrDd8PA+QFjaKkpTbKBmQL0zVealg4/V4Yo9658wTvBZwyFX+MLpiWYoVJxpmlqVI6oMdxkRobyM8YQJqSxRaBomIWkaqXBPpdhXGPocgb8gqGtm5JBfUKaanki/2JqVXWvMRTe3rESUoaBXhqdL+S/BFdNjWIiea6WopBfdkmOzLnDNmcoPBlwAkQYbrL0QPPmD2Bsq0fUGbIrEoYfZlawgU3QSEVZmuYTg1XO8LTC5kaqrhxyzg7LDIPswBgK4S7V3+PNUlyp5lfNmfczNIxSdPN0kvCFmQG2YrRZhnuDTjh9kP6+PRF88siiPkP0eJehlOybJQbvwMyYwfgrgOf4WravH2FlO3xmKfuuMPzOoDZHu6zs4LaA2PD6R0fuR9eBviK/+zuTOSTwzeMT7RpD3rRUsBORychJlKRYWV6+/L7+vLU8qmqdkMeQ+Ukl4LpiAi8YFaejbahm2fLTz+v2Le+Ulyg5Ep69FPU0NJj9How61g/HcH2XDMuM7l+Gj8HwXooWBHVfyh0PZ4N6POTOaWaDek7DnZfOBvW8lHtuMRvU5xbc88PZoD4/5J7jzwaNOT7/wwV8n7ok269YrudviFY4vl9y07ZPC4B+czm22nJDEZR/L69wnlQlbazT8K61wakgoBVKcfdddr8/GZ3/vWV6aaHFzPBqoPDdnFfVWhqAzI90fU9dRPT9XV7zjMpV0mOLu421Nt71UmGbprQusdDLi2JeRtcUXThDBwX1FV1bBMZL/VT1lunhFWKlm4ZKxnCpaWU1WWoHLa+SHmPYWC/lXfMO9HSb0gXOJ6NUJJLNjHQrVA8/ZkG9h2FHS/dDoyshDYYad0Rrrnnz1i0+zJWn04FflleHDmw5AnbaUgvqPQw7WqLVb1Kuu4BhMw3lTUxTqIuvJi1kp8Yz+34D6BJgoIONmxXrgd0Mu1riMix2TxcwbEqMs364BHogJCrdcfBBS6UCWuilwvgwofN4MvMFt26GXS2hHyRrbpcwbNYPOWvAb+YrHI1MZfJipT4XMK+D9zFEWsbceTfDrpZQfY20jdIpDJs1YL46vpvhJcBPNvA/rKpiqdQ2I4BL9WZerOlk2NLyU1gsFt7yV9st2yjBjxFv/aklvnPtxVBo5UnL/Sat2W+NA2nxREpkL+bhGMNmyzTFoU4z90FOqR4taDjctRTCy2jbi8G1n+aVdlel5SWmnDAYEgWACoyHztZZeaaLYUvLNNUQdDX9uJRh234anhniWqdL63uT5iLvBt5BwXZnQCdEl8RXrJjfxbCzpeslGt13c76Wtu2J4tnX9o8RWwM68BsSEg8sbHyx7iom9bddDLtb4rOK7Qx5PU3bvjaevYlmusqLmfnAP+c8kcqlP7jF5y/b1NXBsKelgEqIX5cxbH2AxPH9pbFWFDMPOhkirJ9UV9FuobyFQfcrdDDsaSmgPUjaRQzb95ce3yP8aaxYMTPU6MBjH5P33jSeWIsPg+zw6mDY01JA6b16EcN2Lkf3eTtZaUdCvpfw1/iKWcyItdJUgZbz2xn2tYRdARdqaYc+HturL5p6EU5gJCQzW0tLV2yv3rNRKnC/kQ8Fw2J3X39LwdmmAFsRpFR277WPfV1tp3LsfotVaQsomhzSHmtwwkis2snK278iDYeWnGH6mlc4vfaW6df+HeIHGNovpZQ+s4Peqh8/+7h23W9x5J6ZzS4ru6dPQKf0e12lO5jlbFeuDACAQoihk0CyU/MK539Be0tVZX6MWkNUlEXRlr+oXCXtmyZ03TNz5L6nTVJ59Yqd0GpokCis1p1UPHSMS6JKQkZTLCqc4sJqbUlh5cMclMqiSvVj73vKOm9Ru/t71x7g/sP7v4f0/u8D7r0Lej7oY3H/9+Pf/zMVHuC5GPf/bJMHeD7N/T9j6P6fE/UAz/q6/+e1PcAz9+7/uYkP8OzLGVsi5/NLH+AZtPf/HOEHeBb0/T/Pe8bPZOc2rrt/rv4c343gnfZuhPt/v8UDvKPkAd4zc//vCnqA9z09wDu77v+9aw/w7rwHeP/h/b/D8gHeQ/oA75J9gPcBP8A7ne//vdzTf7f6AGmXP1WKmOAgOys206SICQ40h42mSBETHCzjmiDFYQlSilPyqNbABCnF6cRFZXCCxN2IyTQSOBdlMkM5mQIoaDRvRLkFPJRnDRMmqkChfwqTKRv3Y5T1FTJ2t54SR2PqkpuguYpyS2N0kY+RRvQHyEnz3RI9DgJ8/VHDFnapN9NUrKHDO9EqyCgmt1jwd5LraJAbSlcYyBZg9ZHCa3gBcqnkuqGRCPBaA+uJV48bJEa0PLRw3AtebTuDLV0/FHvE6pVrDKqnSDcwC2qNomyN7VUdi1zoBhVpl146HnMn4yKmA3mbRIqoKuQ4lhwdwu/6ClrAFglHa4wueERJJPG28xmfclSGvolhrVB+t78Ti3KUpGg4ZXUiSZoKPwSqq5Ks+EM4BNdWZGkK+llGENI+yZZ9GUnXttipwmntk2B6hXq2OVddHZ+O1LA6PxjWefdkMbZPjZILOxbz48Op3nzl+tSCUC8lyw/4NNYNfEssDhzGmkfDIlc0pGqyGEZ20C3ORWBHiFx+hBz6M7jZw13n+oZpQnGKihVHG9+21wi27W+i2FKQoKWiIdTt9aSlVwG0qqQQDaNaRvUnOTndcm8P1/NjpSKmBrCAldj35iO7JqCpLeMwkSFKEkQfkzBe9hnp7OA6nhcEwRr+8zxnzkL7wx/+8Ic6/g9e2feknxCKKwAAAABJRU5ErkJggg==',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
//  CachedNetworkImage(
              //   imageUrl: 'https://picsum.photos/250?image=9',
              //   progressIndicatorBuilder: (context, url, progress) {
              //     if (articleModel.image != null) {
              //       return Image.network(
              //         articleModel.image!,
              //         fit: BoxFit.cover,
              //         height: 200,
              //         width: double.infinity,
              //       );
              //     }
              //     return Image.network('articleModel.image');
              //   },
              // ),