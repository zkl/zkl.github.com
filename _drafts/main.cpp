#include <stdio.h>
#include <cairo.h>
#include <cairo-svg.h>
#include <math.h>

void draw_range_text(cairo_t* cairo, const char* text, int x, int y);
void draw_arrow_to(cairo_t* ario);
void draw_arc_text(cairo_t* cairo, const char* text, int x, int y);

int main(int argc, char* argv[])
{
	cairo_surface_t* surface = cairo_image_surface_create (CAIRO_FORMAT_ARGB32, 758, 1024);
	cairo_t* cairo = cairo_create (surface);
	
	cairo_set_source_rgb (cairo, 0, 0, 0);
	cairo_select_font_face (cairo, "Alako-Bold", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL);
	cairo_set_font_size (cairo, 32.0);

	cairo_arc(cairo, 20, 20, 10, 0, 2*M_PI);
	cairo_fill(cairo);
	

	draw_arc_text(cairo, "Me.", 500, 200);
	draw_arc_text(cairo, "Free Game.", 50, 200);
	draw_arc_text(cairo, "Hello World.", 50, 400);
	draw_arc_text(cairo, "This is a long story.", 50, 600);
	draw_arc_text(cairo, "This is a long long story.", 50, 800);

	cairo_surface_t* s = cairo_image_surface_create_from_png("drawing.svg");
	cairo_mask_surface(cairo, s, 0, 0);
	
	cairo_surface_write_to_png (surface, "image.png");

	cairo_destroy (cairo);
	cairo_surface_destroy (s);
	cairo_surface_destroy (surface);
	
	return 0;

}

void draw_range_text(cairo_t* cairo, const char* text, int x, int y)
{
	cairo_set_line_cap(cairo, CAIRO_LINE_CAP_ROUND);
	cairo_set_line_width(cairo, 8.0);

	cairo_text_extents_t et;
	cairo_text_extents(cairo, text, &et);

	double space = et.height;
	cairo_rectangle(cairo, x-space/2, y-et.height+space/2, et.width+space, et.height+space);
	cairo_stroke(cairo);

	cairo_move_to(cairo, x, y+et.height);
	cairo_show_text(cairo, text);

}

void draw_arc_text(cairo_t* cairo, const char* text, int x, int y)
{
	cairo_save(cairo);

	double rate = 0.0;
	cairo_text_extents_t et;
	cairo_move_to(cairo, x, y);
	cairo_text_extents(cairo, text, &et);

	rate = et.height/et.width;

	if(rate < 0.25) // min rate
		rate = 0.25;

	cairo_show_text(cairo, text);
	
	cairo_new_sub_path(cairo);
	cairo_set_line_width(cairo, 3);
	cairo_scale(cairo, 1, rate);

	double cx = x+et.width/2;
	double cy = y-et.height/2;
	cairo_device_to_user(cairo, &cx, &cy);

	cairo_arc(cairo, cx, cy, et.width/2 + et.height, 0, 2*M_PI);
	cairo_stroke(cairo);

	cairo_restore(cairo);
}

void draw_arrow_to(cairo_t* cairo)
{
	double x = 300;
	double y = 500;
	double s = 20;
	double arraw[][2] = {
		{1, 1},
		{1, 2},
		{1.5, 1.5},
	};

	cairo_new_path(cairo);
	cairo_move_to(cairo, x+arraw[0][0]*s, y+arraw[0][1]*s);
	for(int i=1; i<sizeof(arraw); i++)
		cairo_line_to(cairo, x+arraw[i][0]*s, y+arraw[i][1]*s);

	cairo_close_path(cairo);

	cairo_fill(cairo);
}
