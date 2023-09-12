function Gen_Modified_Center_Circle()

    figure( 'Position', [2400, 300, 1200, 800 ]);

    im = imread( 'L1000738.JPG' );
    im_r    = im(:,:,1);
    im_g    = im(:,:,2);
    im_b    = im(:,:,3);

    % How big is the input image?
    ht          = size(im,1);
    wd          = size(im,2);

    % Find the center:
    center_y    = ht/2;
    center_x    = wd/2;

    % Now create two matrices, the first has all the col
    [COL_numbers,ROW_numbers] = meshgrid( 1:wd, 1:ht );

    % Compute the distance from the CENTER POINT:
    distance_from_center = ( (ROW_numbers-center_y).^2 + ... 
                             (COL_numbers-center_x).^2 ).^(1/2);

    % Create a binary mask of the inner circle of pixels.
    b_in_circle = distance_from_center <= min([ht/2, wd/2]);
    % b_in_circle = distance_from_center <= 400;

    % Invert, or complement those pixels:
    im_r( b_in_circle )     = 255 - im_r( b_in_circle );
    im_g( b_in_circle )     = 255 - im_g( b_in_circle );
    im_b( b_in_circle )     = 255 - im_b( b_in_circle );


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

    imwrite( im_new, 'Image_with_Circle_Altered.png', 'PNG');
end
