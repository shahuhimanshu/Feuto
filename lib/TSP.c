#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <math.h>
int TSP(int cam[n][n], boolean visited[n], int cp, int n, int cost, int count, int ans)
{
    if (count == n && cam[cp][0] > 0)
    {
        if (ans < cost + cam[cp][0])
        {
            return ans;
        }
        else
        {
            return cost + cam[cp][0];
        }
    }
    for (int i = 0; i < n; i++)
    {
        if (visited[i] == false && cam[cp][i] > 0)
        {
            visited[i] = true;
            ans = TSP(cam, visited, i, n, cost + cam[cp][i], count + 1, ans);
            visited[i] = false;
        }
    }
    return ans;
}
void main()
{
    system("cls");
    int n;
    printf("\n\t Enter the size of cost adjecency matrix");
    scanf("%d", &n);
    int cam[n][n];
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            scanf("%d", cam[i][j]);
        }
    }
    boolean visited[n];
    visited[0] = true;
    int ans = 0;
    int ans = TSP(cam, visited, 0, n, 0, 1, ans);
    printf("\n\t Solution: %d", ans);
    getch();
}