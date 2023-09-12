function Gen_Binary_Image()

    figure( 'Position', [2400, 300, 1200, 800 ]);

    im = imread( 'L1000738.JPG' );

     %b_image = im >= 100;     % Arbitrary threshold I chose
    im_r = im(:,:,1);
im_g = im(:,:,2);
im_b = im(:,:,3);
% Now re-combine in the wrong order:
im_new = im_g;
im_new(:,:,2) = im_b;
im_new(:,:,3) = im_r;
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
    
end
