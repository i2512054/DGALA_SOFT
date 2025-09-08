@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .zoom { transition: transform .5s; height: 300px; }
        .zoom:hover { transform: scale(1.5); }
        .zoomCart { transition: transform .5s; height: 90px; }
        .zoomCart:hover { transform: scale(1.5); }
    </style>
    <section>
        <article>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button style="height: 28px; border-radius: 50%; margin-right: 16px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active bg-black bg-gradient" aria-current="true" aria-label="Slide 1"></button>
                    <button style="height: 28px; border-radius: 50%; margin-right: 16px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" class="bg-black bg-gradient" aria-label="Slide 2"></button>
                    <button style="height: 28px; border-radius: 50%; margin-right: 16px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" class="bg-black bg-gradient" aria-label="Slide 3"></button>
                    <button style="height: 28px; border-radius: 50%;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" class="bg-black bg-gradient" aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="../../assets/img/slide_j01.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../../assets/img/slide_j02.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../../assets/img/slide_j03.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../../assets/img/slide_j04.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev"type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </article>
    </section>

    <section>
        <div class="container-fluid p-4">
            <div class="row">
                <div class="col-12 col-md-3">
                    <div class="row mb-4">
                        <div class="col-12">
                            <span class="fw-bold">Categorías</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="vstack">
                                @foreach($categoriesParent as $item)
                                <div class="card mb-3">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col m-0 p-0">
                                                <div class="d-flex justify-content-between">
                                                    <button class="btn btn-sm">{{ $item->name }}</button>
                                                    <button 
                                                        type="button" 
                                                        class="btn btn-sm" 
                                                        data-bs-toggle="collapse" 
                                                        data-bs-target="#collapse-category-{{ $item->id }}" 
                                                        aria-expanded="false" 
                                                        aria-controls="#collapse-category-{{ $item->id }}">
                                                        <i class="fas fa-angle-down"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body collapse show" id="collapse-category-{{ $item->id }}">
                                        <div class="vsstack">
                                            @foreach ($categories as $itemC)
                                                @if ($itemC->category_id === $item->id)
                                                    <div class0="form-check mb-3">
                                                        <input class="form-check-input me-2" type="checkbox" value="{{ $itemC->id }}" />
                                                        <label class="form-check-label">{{ $itemC->name }}</label>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                </div>                                    
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col-12 mt-4 mb-4">
                            <span class="fw-bold">Filtrar por Precio</span>
                        </div>
                        <div class="col-12 ps-4 pe-4">
                            <input type="text" id="slider" class="slider" />
                        </div>
                        <div class="col-12">
                            <div class="d-flex justify-content-between">
                                <input type="text" class="form-control form-control-sm text-center" id="min-price" name="min-price" value="0" readonly />
                                <div class="w-50"></div>
                                <input type="text" class="form-control form-control-sm text-center" id="max-price" name="max-price" value="500" readonly />
                            </div>
                        </div>
                        <div class="col-12 mt-4">
                            <button class="btn btn-sm btn-primary w-100">
                                <i class="fas fa-filter me-2"></i>Aplicar Filtro
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-9">
                    <div class="row">
                        <div class="col">
                            <div class="d-flex justify-content-between">
                                <span></span>
                                <div class="row">
                                    <div class="col">
                                        <div class="input-group">
                                            <button class="btn btn-sm me-2">Ordenar por: </button>
                                            <select class="form-select form-select-sm me-2" name="">
                                                <option value="00" selected>Seleccionar ...</option>
                                                <option value="01">Precio de menor a mayor</option>
                                                <option value="02">Precio de mayor a menor</option>
                                                <option value="03">A - Z</option>
                                                <option value="04">Z - A</option>
                                            </select>
                                            <form action="/catalog/filter" method="POST">
                                                @csrf
                                                <input type="hidden" name="viewType" value="list" />
                                                <input type="hidden" name="filterType" value="" />
                                                <input type="hidden" name="filterCategories" value="" />
                                                <input type="hidden" name="filterPrices" value="" />
                                                <button type="submit" class="btn btn-sm btn-dark me-2"><i class="fas fa-list-ul"></i></button>
                                            </form>
                                            <form action="/catalog/filter" method="POST">
                                                @csrf
                                                <input type="hidden" name="viewType" value="grid" />
                                                <input type="hidden" name="filterType" value="" />
                                                <input type="hidden" name="filterCategories" value="" />
                                                <input type="hidden" name="filterPrices" value="" />
                                                <button type="submit" class="btn btn-sm btn-dark"><i class="fas fa-table-cells-large"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        @foreach ($products as $item)
                            @if(session('catalog-view-type') === 'grid')
                                <div class="col-12 col-md-4 mb-3">
                                    <div class="card">
                                        <div class="overflow-hidden">
                                            <img src="{{ Storage::url($item->link_image) }}" class="card-img-top zoom" height="200" />
                                        </div>
                                        <div class="card-body text-center" style="height: 100px;">
                                            <h2 class="fs-6">{{ $item->name }}</h2>
                                        </div>
                                        <div class="card-footer border border-0 text-center bg-white pb-4">
                                            <p class="fw-bold">S/. {{ number_format($item->sales_price, 2) }}</p>
                                            <form action="/carts/add" method="POST">
                                                @csrf
                                                <input type="hidden" name="id" value="{{ $item->id }}" />
                                                <div class="hstack gap-3">
                                                    <a href="/catalog/{{ $item->id }}" class="btn btn-dark bg-gradient w-50"><i class="fab fa-sistrix me-2"></i>Ver</a>
                                                    <button type="submit" class="btn btn-danger bg-gradient w-50"><i class="fas fa-cart-plus me-2"></i>Agregar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            @else
                                <div class="col-12 col-md-12 mb-3">
                                    <div class="card mb-3">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <div class="overflow-hidden">
                                                    <img src="{{ Storage::url($item->link_image) }}" class="card-img-top zoom img-fluid rounded-start" />
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h5 class="card-title">{{ $item->name }}</h5>
                                                    <p class="card-text">{{ $item->description }}</p>
                                                    <p class="card-text"><small class="text-body-secondary">S/. {{ number_format($item->sales_price, 2) }}</small></p>
                                                    <form action="/carts/add" method="POST">
                                                        @csrf
                                                        <input type="hidden" name="id" value="{{ $item->id }}" />
                                                        <div class="hstack gap-3">
                                                            <a href="/catalog/{{ $item->id }}" class="btn btn-dark bg-gradient w-50"><i class="fab fa-sistrix me-2"></i>Ver</a>
                                                            <button type="submit" class="btn btn-danger bg-gradient w-50"><i class="fas fa-cart-plus me-2"></i>Agregar al Carrito</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="d-flex custom-pagination justify-content-center">
                                {{ $products->appends(request()->query())->links('vendor.pagination.bootstrap-5') }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        var slider = new rSlider({
            target: '#slider',
            values: {min: 0, max: 500},
            step: 10,
            range: true,
            set: [0, 500],
            scale: true,
            labels: false,
            tooltip: false,
            onChange: function (vals) {
                console.log(vals);
                let price = vals.split(',');
                $('#min-price').val(price[0]);
                $('#max-price').val(price[1]);
            }
        });
    </script>
@endsection