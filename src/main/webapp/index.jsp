<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop · friendly commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
    <style>
        /* ===== SOFT RESET ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: #f5f7fb;
            color: #1e1e2a;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        button {
            font-family: inherit;
            cursor: pointer;
            border: none;
            background: none;
            color: inherit;
        }
        img {
            display: block;
            max-width: 100%;
        }
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ===== BUTTONS (friendly) ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 15px;
            transition: all 0.2s ease;
            border: 2px solid transparent;
            background: #fff;
            color: #1e1e2a;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
        }
        .btn-primary {
            background: #2b5f8a;
            color: #fff;
            border-color: #2b5f8a;
        }
        .btn-primary:hover {
            background: #1f4a6e;
            border-color: #1f4a6e;
            transform: translateY(-2px);
            box-shadow: 0 12px 24px -10px rgba(43, 95, 138, 0.3);
        }
        .btn-secondary {
            background: #eef2f6;
            color: #1e1e2a;
        }
        .btn-secondary:hover {
            background: #e2e8f0;
        }
        .btn-accent {
            background: #d97a5c;
            color: #fff;
            border-color: #d97a5c;
        }
        .btn-accent:hover {
            background: #c76545;
            border-color: #c76545;
            transform: translateY(-2px);
            box-shadow: 0 12px 24px -10px rgba(217, 122, 92, 0.3);
        }
        .btn-outline {
            background: transparent;
            border-color: rgba(30, 30, 42, 0.15);
        }
        .btn-outline:hover {
            background: #1e1e2a;
            color: #fff;
            border-color: #1e1e2a;
        }
        .btn-sm {
            padding: 8px 18px;
            font-size: 13px;
        }

        /* ===== HEADER (friendly, clean) ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.82);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.03);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 10px 0;
            min-height: 64px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 700;
            font-size: 20px;
            letter-spacing: -0.3px;
            color: #1e1e2a;
        }
        .brand i {
            color: #2b5f8a;
            font-size: 24px;
        }
        .brand span {
            color: #d97a5c;
        }

        nav.main-nav ul {
            display: flex;
            gap: 2px;
            list-style: none;
        }
        nav.main-nav li a {
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: #4a4a5a;
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: #eef2f6;
            color: #1e1e2a;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .icon-btn {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            color: #4a4a5a;
            font-size: 17px;
            transition: 0.2s;
            position: relative;
        }
        .icon-btn:hover {
            background: #eef2f6;
            color: #1e1e2a;
        }
        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: #d97a5c;
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: #eef2f6;
            border-radius: 50px;
            padding: 0 14px 0 18px;
            transition: 0.2s;
            border: 2px solid transparent;
            min-width: 180px;
        }
        .search-wrap:focus-within {
            border-color: #2b5f8a;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(43, 95, 138, 0.08);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
        }
        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: #6b6b7a;
        }
        .search-wrap button:hover {
            color: #2b5f8a;
        }

        .mobile-toggle {
            display: none;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #eef2f6;
            font-size: 18px;
            color: #1e1e2a;
        }
        #mobileMenu {
            display: none;
            background: #fff;
            padding: 12px 0 20px;
            border-top: 1px solid rgba(0, 0, 0, 0.03);
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 2px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 16px;
            border-radius: 12px;
            font-weight: 500;
            color: #1e1e2a;
        }
        #mobileMenu ul li a:hover {
            background: #f0f2f5;
        }

        /* ===== HERO (warm & inviting) ===== */
        .hero {
            position: relative;
            border-radius: 28px;
            overflow: hidden;
            margin: 20px 20px 0;
            padding: 56px 0;
            background: linear-gradient(145deg, #f0f4fa 0%, #dce3ed 100%);
            min-height: 360px;
            display: flex;
            align-items: center;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.15;
            pointer-events: none;
        }
        .hero .container {
            position: relative;
            z-index: 2;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(43, 95, 138, 0.12);
            color: #2b5f8a;
            padding: 4px 16px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 14px;
            letter-spacing: 0.2px;
        }
        .hero h1 {
            font-size: 42px;
            font-weight: 700;
            line-height: 1.1;
            color: #1e1e2a;
            max-width: 600px;
            margin-bottom: 12px;
        }
        .hero p {
            font-size: 16px;
            color: #3e3e4e;
            max-width: 460px;
            margin-bottom: 24px;
            opacity: 0.8;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ===== SECTION ===== */
        .section {
            padding: 48px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 28px;
            flex-wrap: wrap;
        }
        .section-header h2 {
            font-size: 26px;
            font-weight: 700;
            letter-spacing: -0.3px;
        }
        .section-header p {
            color: #5e5e6e;
            margin-top: 4px;
        }
        .view-all {
            font-weight: 600;
            color: #2b5f8a;
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            transition: 0.2s;
            white-space: nowrap;
        }
        .view-all:hover {
            gap: 12px;
            color: #1f4a6e;
        }

        /* ===== CATEGORIES ===== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: #fff;
            border-radius: 24px;
            padding: 24px 12px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
            transition: 0.25s;
            border: 2px solid transparent;
            cursor: default;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 32px rgba(0, 0, 0, 0.04);
            border-color: #d97a5c40;
        }
        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: #ecf3fa;
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 22px;
            color: #2b5f8a;
            transition: 0.2s;
        }
        .cat-card:hover .icon-wrap {
            background: #2b5f8a;
            color: #fff;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: #7a7a8a;
            margin-top: 4px;
        }

        /* ===== PRODUCTS ===== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: #fff;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
            transition: 0.25s;
            border: 2px solid transparent;
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 16px 40px rgba(0, 0, 0, 0.04);
            border-color: #d97a5c40;
        }
        .product-card .img-wrap {
            position: relative;
            aspect-ratio: 1/1;
            background: #f5f7fb;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #2b5f8a;
            color: #fff;
            padding: 4px 14px;
            border-radius: 50px;
            font-size: 11px;
            font-weight: 700;
        }
        .product-card .badge.sale {
            background: #d97a5c;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(4px);
            display: grid;
            place-items: center;
            color: #6b6b7a;
            transition: 0.2s;
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: #d97a5c;
            transform: scale(1.1);
        }
        .product-card .body {
            padding: 16px 16px 10px;
            flex: 1;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: #8a8a9a;
            text-transform: uppercase;
            letter-spacing: 0.3px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            margin: 4px 0 6px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 2px;
        }
        .product-card .price {
            font-weight: 700;
            font-size: 18px;
        }
        .product-card .old-price {
            color: #9a9aaa;
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: #f5a623;
            margin-top: 4px;
        }
        .product-card .rating span {
            color: #7a7a8a;
        }
        .product-card .footer {
            padding: 0 16px 16px;
        }
        .product-card .add-btn {
            width: 100%;
            padding: 10px;
            border-radius: 50px;
            background: #eef2f6;
            font-weight: 600;
            font-size: 14px;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            color: #1e1e2a;
        }
        .product-card .add-btn:hover {
            background: #2b5f8a;
            color: #fff;
        }
        .product-card .add-btn.added {
            background: #2a9d8f;
            color: #fff;
        }

        /* ===== DEAL ===== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: #fff;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: #eef2f6;
            min-height: 260px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 36px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            background: #d97a5c;
            color: #fff;
            padding: 4px 16px;
            border-radius: 50px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 26px;
            font-weight: 700;
        }
        .deal-wrap .deal-content .desc {
            color: #5e5e6e;
            margin: 6px 0 12px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 30px;
            font-weight: 800;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 18px;
            font-weight: 400;
            color: #9a9aaa;
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: #5e5e6e;
            margin: 4px 0 16px;
        }
        .deal-wrap .deal-content .stock strong {
            color: #d97a5c;
        }
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 12px 0 20px;
        }
        .timer-box {
            background: #1e1e2a;
            color: #fff;
            padding: 10px 14px;
            border-radius: 16px;
            min-width: 64px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 24px;
            font-weight: 700;
            line-height: 1.2;
        }
        .timer-box .label {
            font-size: 10px;
            opacity: 0.7;
            text-transform: uppercase;
        }

        /* ===== TESTIMONIALS ===== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: #d0d7e2;
            border-radius: 50px;
        }
        .testimonial-card {
            flex: 0 0 320px;
            background: #fff;
            border-radius: 24px;
            padding: 24px 26px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 15px;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.6;
            color: #1e1e2a;
            font-style: italic;
            margin-bottom: 14px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: #eef2f6;
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: #7a7a8a;
        }

        /* ===== NEWSLETTER ===== */
        .newsletter-wrap {
            background: linear-gradient(145deg, #1e2a3a, #2a3a4e);
            border-radius: 28px;
            padding: 44px 48px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 24px;
            font-weight: 700;
        }
        .newsletter-wrap .text p {
            opacity: 0.7;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 460px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 180px;
            padding: 14px 20px;
            border-radius: 50px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.08);
            color: #fff;
            outline: 2px solid transparent;
            transition: 0.2s;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: #d97a5c;
            background: rgba(255, 255, 255, 0.14);
        }
        .newsletter-wrap form .btn {
            background: #d97a5c;
            color: #fff;
            border-color: #d97a5c;
        }
        .newsletter-wrap form .btn:hover {
            background: #c76545;
            border-color: #c76545;
        }
        #newsletterMsg {
            margin-top: 10px;
            font-size: 14px;
            width: 100%;
            opacity: 0.9;
        }

        /* ===== FOOTER ===== */
        footer {
            padding: 40px 0 24px;
            border-top: 1px solid rgba(0, 0, 0, 0.03);
            margin-top: 8px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 28px;
        }
        .footer-grid .brand-col .brand {
            font-size: 20px;
            margin-bottom: 8px;
        }
        .footer-grid .brand-col p {
            color: #5e5e6e;
            font-size: 14px;
            max-width: 280px;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #eef2f6;
            display: grid;
            place-items: center;
            color: #4a4a5a;
            transition: 0.2s;
        }
        .footer-grid .brand-col .socials a:hover {
            background: #2b5f8a;
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 12px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul li a {
            color: #5e5e6e;
            font-size: 14px;
            transition: 0.2s;
        }
        .footer-grid .col ul li a:hover {
            color: #2b5f8a;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 16px;
            border-top: 1px solid rgba(0, 0, 0, 0.03);
            color: #8a8a9a;
            font-size: 13px;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1024px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }
        @media (max-width: 820px) {
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 200px;
            }
            .deal-wrap .deal-content {
                padding: 28px 28px;
            }
            .newsletter-wrap {
                flex-direction: column;
                text-align: center;
                padding: 32px 24px;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .hero {
                margin: 12px 12px 0;
                padding: 40px 0;
                border-radius: 20px;
            }
            .hero h1 {
                font-size: 32px;
            }
        }
        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 24px;
            }
            .search-wrap {
                min-width: 120px;
            }
            .search-wrap input {
                font-size: 13px;
                padding: 8px 0;
            }
            .header-actions .icon-btn {
                width: 36px;
                height: 36px;
                font-size: 15px;
            }
            .cart-count {
                width: 18px;
                height: 18px;
                font-size: 10px;
            }
            .brand {
                font-size: 17px;
            }
            .brand i {
                font-size: 20px;
            }
        }
        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero {
                margin: 8px 8px 0;
                padding: 28px 0;
                border-radius: 16px;
            }
            .hero h1 {
                font-size: 24px;
            }
            .container {
                padding: 0 14px;
            }
            .deal-wrap .deal-content {
                padding: 18px 16px;
            }
            .deal-wrap .deal-img {
                flex: 0 0 140px;
            }
            .newsletter-wrap {
                padding: 20px 16px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 18px;
            }
            .timer-box {
                min-width: 48px;
                padding: 6px 10px;
            }
            .timer-box .num {
                font-size: 18px;
            }
            .product-card .body h5 {
                font-size: 13px;
            }
            .product-card .price {
                font-size: 15px;
            }
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:8px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    Nexus<span>Shop</span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:8px;">
                <div class="search-wrap">
                    <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- HERO -->
        <section class="hero">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> Fresh collection 2026</div>
                <h1>Discover friendly <br>everyday essentials</h1>
                <p>Carefully curated goods, free shipping on first order. Simple, human, delightful.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-secondary" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div><h2>Browse categories</h2><p>Find what you love</p></div>
                    <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products">
            <div class="container">
                <div class="section-header">
                    <div><h2>Trending now</h2><p>Popular picks from our community</p></div>
                    <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-header">
                    <div><h2>⚡ Flash deal</h2><p>Limited stock, grab it</p></div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, incredibly powerful. The M2 chip redefines performance.</p>
                        <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
                        </div>
                        <button class="btn btn-accent" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-header">
                    <div><h2>What our customers say</h2><p>Real reviews, real people</p></div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3>Stay in the loop</h3>
                        <p>Exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email">
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand"><i class="fas fa-store-alt"></i> Nexus<span>Shop</span></div>
                    <p>Friendly e‑commerce demo. Quality goods, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
                <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
                <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
            </div>
            <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
        </div>
    </footer>

    <script>
        // ===== DATA =====
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [
            { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. Exceeded expectations!', stars: 5 },
            { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
            { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and packaging. Everything arrived perfect.', stars: 5 },
            { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 deal was unbeatable.', stars: 5 }
        ];

        // ===== STATE =====
        let cartCount = 0;

        // ===== DOM REFS =====
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ===== RENDER =====
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${p.title}</h5>
                        <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${t.text}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${t.name}" loading="lazy">
                        <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();
            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1500);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // ===== DEAL TIMER =====
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ===== EVENTS =====
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = '#2a9d8f';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email.';
                newsletterMsg.style.color = '#f8b4b4';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => { newsletterMsg.style.display = 'none'; }, 3500);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // ===== INIT =====
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });
        console.log('✨ NexusShop · friendly commerce loaded.');
    </script>
</body>
</html>
