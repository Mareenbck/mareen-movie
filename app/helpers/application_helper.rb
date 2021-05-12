module ApplicationHelper
  def randomized_background_image
    images = [cl_image_path( "rqxkz8qdmlimnzuu0yc0rh0djxfi.jpg", crop: :fill, height: 180, width: 140),
              cl_image_path( "lowaxr6medsgazhkc9az.jpg", crop: :fill, height: 180, width: 140),
              cl_image_path( "wbze2bsyhsys5jfflszy.jpg", crop: :fill, height: 180, width: 140),
              cl_image_path( "gmjri8vhpxufynop6yj2.jpg", crop: :fill, height: 180, width: 140),
              cl_image_path( "y233kj0jeomvsjkgfwkv.jpg", crop: :fill, height: 180, width: 140),
              cl_image_path( "nrtykhcro7sq4e6sepiq.jpg", crop: :fill, height: 140, width: 140),
              cl_image_path( "axxq2a08mmoeyz7ybek6.jpg", crop: :fill, height: 160, width: 140),
              cl_image_path( "hhlyavi6nemdy9ndgh8d.jpg", crop: :fill, height: 180, width: 140),
              cl_image_path( "kszfqyl2ecdd5ihbjyqd.jpg", crop: :fill, height: 160, width: 140),
              cl_image_path( "cfe4lgeoja36b2bmhh1o.jpg", crop: :fill, height: 180, width: 140)]
    images[rand(images.size)]
  end
end
