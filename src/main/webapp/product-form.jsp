<%@ include file="header.jsp" %>
<div class="main-content fade-in col-lg-9 mx-auto">
    <div class="d-flex justify-content-between align-items-end mb-5">
        <div>
            <c:if test="${product != null}">
                <h1 class="font-weight-bold mb-2" style="color: white; font-size: 2.5rem;">Édition <span style="color: var(--accent-red); text-shadow: 0 0 15px var(--accent-glow);">Produit</span></h1>
            </c:if>
            <c:if test="${product == null}">
                <h1 class="font-weight-bold mb-2" style="color: white; font-size: 2.5rem;">Nouveau <span style="color: var(--accent-red); text-shadow: 0 0 15px var(--accent-glow);">Asset</span></h1>
            </c:if>
            <p class="text-muted mb-0" style="font-size: 1.1rem; opacity: 0.7;">Configuration des caractéristiques techniques de l'inventaire</p>
        </div>
        <a href="products" class="btn btn-ghost px-4">
            <i class="fa-solid fa-chevron-left mr-2"></i> Annuler
        </a>
    </div>

    <div class="premium-card">
        <c:if test="${product != null}">
            <form action="update-product" method="post">
            <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
        </c:if>
        <c:if test="${product == null}">
            <form action="create-product" method="post">
        </c:if>

            <div class="form-group mb-4">
                <label for="name">Désignation du Produit</label>
                <input type="text" class="form-control" id="name" name="name" value="<c:out value='${product.name}' />" required placeholder="ex: Module de Stockage Quantum v2">
            </div>

            <div class="form-group mb-4">
                <label for="description">Spécifications Techniques</label>
                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Décrivez les propriétés et l'usage de ce produit..."><c:out value='${product.description}' /></textarea>
            </div>

            <div class="row">
                <div class="col-md-6 form-group mb-4">
                    <label for="price">Prix de Vente Unitaire (€)</label>
                    <div class="position-relative">
                        <i class="fa-solid fa-euro-sign position-absolute" style="left: 1.2rem; top: 1.2rem; color: var(--accent-red); opacity: 0.5;"></i>
                        <input type="number" step="0.01" class="form-control pl-5" id="price" name="price" value="<c:out value='${product.price}' />" required placeholder="0.00">
                    </div>
                </div>

                <div class="col-md-6 form-group mb-4">
                    <label for="stockQuantity">Unités Disponibles</label>
                    <div class="position-relative">
                        <i class="fa-solid fa-boxes-stacked position-absolute" style="left: 1.2rem; top: 1.2rem; color: var(--accent-red); opacity: 0.5;"></i>
                        <input type="number" class="form-control pl-5" id="stockQuantity" name="stockQuantity" value="<c:out value='${product.stockQuantity}' />" required placeholder="0">
                    </div>
                </div>
            </div>

            <div class="form-group mb-5">
                <label for="sku">Référence Catalogue (SKU Code)</label>
                <div class="position-relative">
                    <i class="fa-solid fa-barcode position-absolute" style="left: 1.2rem; top: 1.2rem; color: var(--accent-red); opacity: 0.5;"></i>
                    <input type="text" class="form-control pl-5" id="sku" name="sku" value="<c:out value='${product.sku}' />" required placeholder="SKY-LUM-2026-X">
                </div>
            </div>

            <div class="border-top pt-5 mt-4" style="border-color: rgba(255, 255, 255, 0.05) !important;">
                <button type="submit" class="btn btn-premium btn-block py-4">
                    <i class="fa-solid fa-database mr-3"></i> Synchroniser avec l'Inventaire
                </button>
            </div>
        </form>
    </div>
</div>
<%@ include file="footer.jsp" %>