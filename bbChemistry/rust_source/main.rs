use image::{Rgba, RgbaImage};
use imageproc::drawing::{draw_text_mut, text_size, draw_filled_circle_mut};
use rusttype::{Font, Scale};

fn main() {
    let path = "../graphics/icons/atoms/image.png";

    let mut image = RgbaImage::from_pixel(800, 800, Rgba([0; 4]));

    let font = Vec::from(include_bytes!("../assets/IBMPlexSans-Medium.ttf") as &[u8]);
    let font = Font::try_from_vec(font).unwrap();

    let number_text = "96";
    let element_text = "Tm";
    let size = 256.0;

    let (number_w, number_h) = text_size(Scale{x:size, y:size}, &font, number_text);
    let (element_w, element_h) = text_size(Scale{x:size, y:size}, &font, element_text);

    draw_filled_circle_mut(&mut image, (400, 400), 350, Rgba([255u8, 0u8, 0u8, 255u8]));
    draw_text_mut(&mut image, Rgba([255u8, 255u8, 255u8, 255u8]), 512, 0, Scale{x:size, y:size}, &font, number_text);
    draw_text_mut(&mut image, Rgba([255u8, 255u8, 255u8, 255u8]), 400 - (element_w / 2), 400 - (element_h / 2), Scale{x:size, y:size}, &font, element_text);

    let _ = image.save(path).unwrap();
}