<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumina Inventory | Premium Logistics</title>
    <!-- Assets -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark sticky-top shadow-lg">
            <div class="container-fluid px-lg-5">
                <a class="navbar-brand" href="index.jsp">
                    <div class="mr-3" style="width: 45px; height: 45px; background: var(--gradient-primary); border-radius: 12px; display: flex; align-items: center; justify-content: center; box-shadow: 0 0 20px var(--accent-glow);">
                        <i class="fa-solid fa-cube text-white" style="font-size: 1.4rem;"></i>
                    </div>
                    <span>LUMINA</span> <span style="font-weight: 300; margin-left: 8px; opacity: 0.6; font-size: 1.2rem;">INVENTORY</span>
                </a>
                
                <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <i class="fa-solid fa-bars-staggered" style="font-size: 1.5rem; color: var(--accent-red);"></i>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto align-items-center">
                        <li class="nav-item dropdown mx-2">
                            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                                <i class="fa-solid fa-shield-halved mr-2" style="font-size: 0.9rem;"></i> PERSONNEL
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="users"><i class="fa-solid fa-users mr-3"></i>Liste des Opérateurs</a>
                                <a class="dropdown-item" href="user-form"><i class="fa-solid fa-user-plus mr-3"></i>Enrôler un Membre</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown mx-2">
                            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown">
                                <i class="fa-solid fa-warehouse mr-2" style="font-size: 0.9rem;"></i> ASSETS
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="products"><i class="fa-solid fa-list-check mr-3"></i>Registre des Produits</a>
                                <a class="dropdown-item" href="product-form"><i class="fa-solid fa-plus-circle mr-3"></i>Nouvelle Entrée</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container-fluid px-lg-5 pb-5">