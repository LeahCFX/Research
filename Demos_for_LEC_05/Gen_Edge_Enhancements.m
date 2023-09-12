function Gen_Edge_Enhancements()

    figure( 'Position', [2400, 300, 1200, 800 ]);

    im = imread( 'L1000738.JPG' );
    im_r    = im(:,:,1);
    im_g    = im(:,:,2);
    im_b    = im(:,:,3);

    % Green edges, using default parameters:
    binary_map_of_g_edges  = edge( im_g, 'Canny' );

    % Make those edges magenta:
    im_r( binary_map_of_g_edges ) = 255;
    im_g( binary_map_of_g_edges ) =   0;
    im_b( binary_map_of_g_edges ) = 255;
    
    % Combine back:
    im_new          = im_r;
    im_new(:,:,2)   = im_g;
    im_new(:,:,3)   = im_b;
    
    imagesc( im_new );
    axis image;


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

    imwrite( im_new, 'Image_with_Magenta_Edges.png', 'PNG');
end
