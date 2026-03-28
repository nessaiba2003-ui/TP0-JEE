<%@ include file="header.jsp" %>
<div class="main-content fade-in">
    <div class="d-flex justify-content-between align-items-end mb-5">
        <div>
            <h1 class="font-weight-bold mb-2" style="color: white; font-size: 2.8rem; letter-spacing: -1px;">Registre <span style="color: var(--accent-red); text-shadow: 0 0 20px var(--accent-glow);">Inventaire</span></h1>
            <p class="text-muted mb-0" style="font-size: 1.1rem; opacity: 0.7;">Contrôle des stocks et logistique en temps réel</p>
        </div>
        <a href="product-form" class="btn btn-premium">
            <i class="fa-solid fa-plus-circle mr-3"></i> Nouveau Produit
        </a>
    </div>

    <div class="row mb-5 align-items-center">
        <div class="col-md-6">
            <form action="products" method="get">
                <div class="position-relative">
                    <i class="fa-solid fa-magnifying-glass position-absolute" style="left: 1.5rem; top: 1.2rem; color: var(--accent-red); z-index: 10;"></i>
                    <input type="text" class="form-control pl-5 shadow-lg" name="keyword" placeholder="Rechercher une référence ou un nom..." value="${keyword}" style="height: 3.5rem; background: rgba(0,0,0,0.2);">
                    <button type="submit" class="btn btn-premium position-absolute" style="right: 5px; top: 5px; height: calc(3.5rem - 10px); padding: 0 1.5rem; border-radius: 12px;">Filtrer</button>
                </div>
            </form>
        </div>
    </div>

    <div class="mt-4">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th style="width: 80px;">REF</th>
                        <th>Désignation</th>
                        <th>Prix Unitaire</th>
                        <th>État du Stock</th>
                        <th>Code SKU</th>
                        <th class="text-right">Gestion</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td class="text-muted font-weight-bold" style="font-family: 'Space Grotesk', sans-serif;">#<c:out value="${product.id}" /></td>
                            <td>
                                <div class="font-weight-bold h6 mb-0" style="color: white;"><c:out value="${product.name}" /></div>
                                <small class="text-muted text-uppercase" style="letter-spacing: 1px; font-size: 0.7rem;">Technical Asset</small>
                            </td>
                            <td class="font-weight-bold" style="color: var(--accent-red); font-size: 1.2rem;">
                                <c:out value="${product.price}" /> <span style="font-size: 0.8rem; vertical-align: middle; opacity: 0.8;">€</span>
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${product.stockQuantity > 20}">
                                        <span class="status-badge success">
                                            <i class="fa-solid fa-circle-check"></i> <c:out value="${product.stockQuantity}" /> Unités
                                        </span>
                                    </c:when>
                                    <c:when test="${product.stockQuantity > 0}">
                                        <span class="status-badge warning">
                                            <i class="fa-solid fa-circle-exclamation"></i> <c:out value="${product.stockQuantity}" /> Critique
                                        </span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="status-badge danger">
                                            <i class="fa-solid fa-circle-xmark"></i> Rupture
                                        </span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <span class="badge badge-dark p-2" style="background: rgba(255,255,255,0.05); color: var(--text-muted); font-family: 'Space Grotesk', sans-serif; letter-spacing: 1px; border: 1px solid rgba(255,255,255,0.05);">
                                    <c:out value="${product.sku}" />
                                </span>
                            </td>
                            <td class="text-right">
                                <a href="product-form?action=edit&id=${product.id}" class="btn-ghost btn-sm mr-2" style="padding: 0.6rem 1rem;" title="Mettre à jour">
                                    <i class="fa-solid fa-pen-nib"></i>
                                </a>
                                <a href="delete-product?id=${product.id}" class="btn-ghost btn-sm" style="padding: 0.6rem 1rem; border-color: rgba(239, 68, 68, 0.2);" onclick="return confirm('Supprimer définitivement ce produit de l\'inventaire ?')" title="Supprimer">
                                    <i class="fa-solid fa-trash-can" style="color: var(--accent-red);"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>