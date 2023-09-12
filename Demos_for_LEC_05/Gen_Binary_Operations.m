function Gen_Binary_Operations()

    figure( 'Position', [2400, 300, 1200, 800 ]);

    im = imread( 'L1000738.JPG' );

    im_r    = im(:,:,1);
    im_g    = im(:,:,2);
    im_b    = im(:,:,3);

    binary_red = im_r > 50;

    % Shows logical AND on a vector: &
    binary_grn = (im_g > 50) & (im_g < 100);
    binary_blu = im_b <= 128;
    b_combined = binary_red & binary_grn & binary_blu;


    % You could quantize different color planes differently.

    imagesc( b_combined );
    axis image;

    colormap( "sky" );

%     disp('paused, hit return to continue')
%     pause();
    % Now make the axis fill the figure:
    set( gca(), 'Position', [0 0 1 1]);


%     disp('paused, hit return to continue')
%     pause();
    % Now turn off the axis tick marks:
    axis off;

%     disp('paused, hit return to continue')
%     pause();
    % Now make the background color white:
    set( gcf(), 'Color', 'w');
end
