function Gen_Quantized_Image()

    figure( 'Position', [2400, 300, 1200, 800 ]);

    im = imread( 'L1000738.JPG' );

    q_image_r = im2double( im(:,:,1) );
    q_image_g = im2double( im(:,:,2) );
    q_image_b = im2double( im(:,:,3) );
    q_image_f = round(q_image_r*2)/5;
    q_image_f(:,:,2) = round(q_image_g*4)/7;
    q_image_f(:,:,3) = round(q_image_b*8)/3;

    % You could quantize different color planes differently.

    imagesc( q_image_f );
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
end
