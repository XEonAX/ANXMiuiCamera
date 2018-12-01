package com.miui.filtersdk.filter.helper;

import com.miui.filtersdk.filter.helper.FilterFactory.FilterScene;

public enum FilterType {
    A1_DOC(FilterScene.AI),
    A2_FLOWER(FilterScene.AI),
    A3_FOOD(FilterScene.AI),
    A4_PPT(FilterScene.AI),
    A5_SKY(FilterScene.AI),
    A6_SUNRISE_SUNSET(FilterScene.AI),
    A7_CAT(FilterScene.AI),
    A8_DOG(FilterScene.AI),
    A9_GREEN_PLANTS(FilterScene.AI),
    A10_NIGHT(FilterScene.AI),
    A11_SNOW(FilterScene.AI),
    A12_SEA(FilterScene.AI),
    A13_AUTUMN(FilterScene.AI),
    A14_CANDLELIGHT(FilterScene.AI),
    A15_CAR(FilterScene.AI),
    A16_GRASS(FilterScene.AI),
    A17_MAPLE_LEAVES(FilterScene.AI),
    A18_SUCCULENT(FilterScene.AI),
    A19_BUILDING(FilterScene.AI),
    A20_CITY(FilterScene.AI),
    A21_CLOUD(FilterScene.AI),
    A22_OVERCAST(FilterScene.AI),
    A23_BACKLIGHT(FilterScene.AI),
    A24_SILHOUETTE(FilterScene.AI),
    A25_HUMAN(FilterScene.AI),
    A26_JEWELRY(FilterScene.AI),
    A27_BUDDHA(FilterScene.AI),
    A28_COW(FilterScene.AI),
    A29_CURRY(FilterScene.AI),
    A30_MOTORBIKE(FilterScene.AI),
    A31_TEMPLE(FilterScene.AI),
    N_BERRY(FilterScene.NORMAL),
    N_COOKIE(FilterScene.NORMAL),
    N_DELICACY(FilterScene.NORMAL),
    N_FADE(FilterScene.NORMAL),
    N_FILM(FilterScene.NORMAL),
    N_KOIZORA(FilterScene.NORMAL),
    N_LATTE(FilterScene.NORMAL),
    N_LIGHT(FilterScene.NORMAL),
    N_LIVELY(FilterScene.NORMAL),
    N_QUIET(FilterScene.NORMAL),
    N_SODA(FilterScene.NORMAL),
    N_WARM(FilterScene.NORMAL),
    S_FILM(FilterScene.STICKER),
    S_YEARS(FilterScene.STICKER),
    S_POLAROID(FilterScene.STICKER),
    S_FOREST(FilterScene.STICKER),
    S_WHITEANDBLACK(FilterScene.STICKER),
    S_BYGONE(FilterScene.STICKER),
    N_WHITEANDBLACK(FilterScene.NORMAL),
    B_FAIRYTALE(FilterScene.BEAUTY),
    B_JAPANESE(FilterScene.BEAUTY),
    B_MINT(FilterScene.BEAUTY),
    B_MOOD(FilterScene.BEAUTY),
    B_NATURE(FilterScene.BEAUTY),
    B_PINK(FilterScene.BEAUTY),
    B_ROMANCE(FilterScene.BEAUTY),
    B_MAZE(FilterScene.BEAUTY),
    B_STORY(FilterScene.BEAUTY),
    B_RIDDLE(FilterScene.BEAUTY),
    B_MOVIE(FilterScene.BEAUTY),
    B_WHITEANDBLACK(FilterScene.BEAUTY),
    BI_SUNNY(FilterScene.BEAUTY_INDIA),
    BI_PINK(FilterScene.BEAUTY_INDIA),
    BI_MEMORY(FilterScene.BEAUTY_INDIA),
    BI_STRONG(FilterScene.BEAUTY_INDIA),
    BI_WARM(FilterScene.BEAUTY_INDIA),
    BI_SWEET(FilterScene.BEAUTY_INDIA),
    BI_PORTRAIT(FilterScene.BEAUTY_INDIA),
    BI_RETRO(FilterScene.BEAUTY_INDIA),
    BI_YOUNG(FilterScene.BEAUTY_INDIA),
    BI_ROMANTIC(FilterScene.BEAUTY_INDIA),
    BI_MONO(FilterScene.BEAUTY_INDIA);
    
    public FilterScene mScene;

    private FilterType(FilterScene scene) {
        this.mScene = scene;
    }

    public FilterScene getFilterScene() {
        return this.mScene;
    }
}
